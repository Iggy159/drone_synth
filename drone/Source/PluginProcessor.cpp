#include "PluginProcessor.h"
#include "PluginEditor.h"

DroneSynthAudioProcessor::DroneSynthAudioProcessor()
#ifndef JucePlugin_PreferredChannelConfigurations
    : AudioProcessor(BusesProperties()
        .withOutput("Output", juce::AudioChannelSet::stereo(), true)),
#endif
      parameters(*this, nullptr, juce::Identifier("Parameters"), createParameterLayout())
{
    // Инициализация указателей параметров
    darkModeParam = dynamic_cast<juce::AudioParameterBool*>(parameters.getParameter("darkMode"));
    
    // Установка дефолтных значений
    if (!parameters.state.hasProperty("outputVol")) {
        parameters.state.setProperty("outputVol", 0.7f, nullptr);
    }

    // Инициализация осцилляторов
    oscillators[0].osc.initialise([](float x) { 
        return std::sin(x) + 0.1f * std::sin(3.0f * x); 
    });
    oscillators[1].osc.initialise([](float x) { 
        return std::tanh(3.0f * std::sin(x)); 
    });
    oscillators[2].osc.initialise([](float x) { 
        return x / juce::MathConstants<float>::pi - 1.0f; 
    });
    oscillators[3].osc.initialise([](float x) { 
        float t = std::fmod(x, juce::MathConstants<float>::twoPi);
        return (t < juce::MathConstants<float>::pi) 
            ? (2.0f * t/juce::MathConstants<float>::pi - 1.0f) 
            : (1.0f - 2.0f * (t - juce::MathConstants<float>::pi)/juce::MathConstants<float>::pi); 
    });
    oscillators[4].osc.initialise([](float x) { 
        return std::sin(x) + 0.3f * std::sin(2.2f * x) + 0.1f * std::sin(5.7f * x); 
    });

    filter.setMode(juce::dsp::LadderFilterMode::LPF24);
}

DroneSynthAudioProcessor::~DroneSynthAudioProcessor() {}

// AudioProcessor базовые методы
const juce::String DroneSynthAudioProcessor::getName() const { return "DroneSynth"; }
bool DroneSynthAudioProcessor::acceptsMidi() const { return false; }
bool DroneSynthAudioProcessor::producesMidi() const { return false; }
bool DroneSynthAudioProcessor::isMidiEffect() const { return false; }
double DroneSynthAudioProcessor::getTailLengthSeconds() const { return 0.0; }

int DroneSynthAudioProcessor::getNumPrograms() { return 1; }
int DroneSynthAudioProcessor::getCurrentProgram() { return 0; }
void DroneSynthAudioProcessor::setCurrentProgram(int) {}
const juce::String DroneSynthAudioProcessor::getProgramName(int) { return {}; }
void DroneSynthAudioProcessor::changeProgramName(int, const juce::String&) {}

bool DroneSynthAudioProcessor::hasEditor() const { return true; }

// Подготовка к воспроизведению
void DroneSynthAudioProcessor::prepareToPlay(double sampleRate, int samplesPerBlock)
{
    juce::dsp::ProcessSpec spec;
    spec.sampleRate = sampleRate;
    spec.maximumBlockSize = samplesPerBlock;
    spec.numChannels = juce::jmax(getTotalNumInputChannels(), getTotalNumOutputChannels());

    // Подготовка DSP модулей
    for (auto& osc : oscillators) {
        osc.prepare(spec);
    }

    filter.prepare(spec);
    outputGain.prepare(spec);
    inputGain.prepare(spec);
    subFilter.prepare(spec);

    // Настройка фильтров
    subFilter.setType(juce::dsp::LinkwitzRileyFilterType::lowpass);
    subFilter.setCutoffFrequency(80.0f);

    // Инициализация параметров
    deadArpIncrement = 1.0f / (sampleRate * 0.5f);
}

// Обработка аудиоблока
void DroneSynthAudioProcessor::processBlock(juce::AudioBuffer<float>& buffer, juce::MidiBuffer& midiMessages)
{
    juce::ScopedNoDenormals noDenormals;
    midiMessages.clear();
    
    updateParameters();

    const auto numSamples = buffer.getNumSamples();
    const auto numChannels = buffer.getNumChannels();

    // Генерация drone-сигнала
    juce::AudioBuffer<float> droneBuffer(numChannels, numSamples);
    droneBuffer.clear();

    for (int sample = 0; sample < numSamples; ++sample) {
        // Обновляем Dead ARP для каждого семпла (если включен)
        if (parameters.getRawParameterValue("deadArp")->load() > 0.5f) {
            deadArpPhase += deadArpIncrement;
            if (deadArpPhase >= 1.0f) deadArpPhase -= 1.0f;
            
            const float baseFreq = parameters.getRawParameterValue("osc0Freq")->load();
            for (int i = 0; i < 5; ++i) {
                float freq = baseFreq * (1.0f + i * 0.2f * deadArpPhase);
                oscillators[i].osc.setFrequency(freq);
            }
        }

        // Генерация семплов
        for (int i = 0; i < 5; ++i) {
            const float value = oscillators[i].processSample(0.0f);
            for (int channel = 0; channel < numChannels; ++channel) {
                droneBuffer.addSample(channel, sample, value);
            }
        }
    }

    // Нормализация и применение inputGain
    droneBuffer.applyGain(1.0f / 5.0f);
    
    // Создаем AudioBlock и ProcessContext для drone-сигнала
    juce::dsp::AudioBlock<float> droneBlock(droneBuffer);
    juce::dsp::ProcessContextReplacing<float> droneContext(droneBlock);

    // Применяем inputGain к drone-сигналу (если входной сигнал не используется)
    inputGain.setGainLinear(parameters.getRawParameterValue("inputGain")->load());
    inputGain.process(droneContext);

    // Фильтрация
    filter.process(droneContext);

    // Dark Mode обработка
    if (darkModeParam->get()) {
        subFilter.process(droneContext);
        droneBuffer.applyGain(1.0f);
    }

    // Выходное усиление
    outputGain.setGainLinear(parameters.getRawParameterValue("outputVol")->load());
    outputGain.process(droneContext);

    // Soft clipping
    for (int channel = 0; channel < numChannels; ++channel) {
        auto* data = droneBuffer.getWritePointer(channel);
        for (int sample = 0; sample < numSamples; ++sample) {
            data[sample] = std::tanh(data[sample]);
        }
    }

    buffer.clear();
    // Микширование с выходным буфером
    for (int channel = 0; channel < numChannels; ++channel) {
        buffer.addFrom(channel, 0, droneBuffer, channel, 0, numSamples);
    }
}

// Создание параметров
juce::AudioProcessorValueTreeState::ParameterLayout DroneSynthAudioProcessor::createParameterLayout()
{
    juce::AudioProcessorValueTreeState::ParameterLayout layout;

    // Параметры осцилляторов
    for (int i = 0; i < 5; ++i) {
        layout.add(std::make_unique<juce::AudioParameterFloat>(
            "osc" + juce::String(i) + "Vol", 
            "Osc " + juce::String(i + 1) + " Volume",
            juce::NormalisableRange<float>(0.0f, 1.0f), 
            0.5f));

        layout.add(std::make_unique<juce::AudioParameterFloat>(
            "osc" + juce::String(i) + "Freq", 
            "Osc " + juce::String(i + 1) + " Freq",
            juce::NormalisableRange<float>(20.0f, 2000.0f, 0.1f, 0.3f), 
            110.0f * (i + 1)));
    }

    // Основные параметры
    layout.add(std::make_unique<juce::AudioParameterBool>(
        "darkMode", "Dark Drone Mode", false));

    layout.add(std::make_unique<juce::AudioParameterFloat>(
        "outputVol", "Output Volume", 
        juce::NormalisableRange<float>(0.0f, 1.0f), 
        0.7f));

    layout.add(std::make_unique<juce::AudioParameterFloat>(
        "filterCutoff", "Filter Cutoff",
        juce::NormalisableRange<float>(20.0f, 20000.0f, 0.1f, 0.3f), 
        2000.0f));

    layout.add(std::make_unique<juce::AudioParameterChoice>(
        "filterMode", "Filter Mode",
        juce::StringArray{"LPF12", "LPF24", "HPF12", "HPF24", "BPF12", "BPF24"}, 
        1));

    layout.add(std::make_unique<juce::AudioParameterFloat>(
        "filterReso", "Filter Resonance", 
        juce::NormalisableRange<float>(0.1f, 1.0f), 
        0.3f));

    layout.add(std::make_unique<juce::AudioParameterFloat>(
        "inputGain", "Input Gain", 
        juce::NormalisableRange<float>(0.0f, 2.0f), 
        1.0f));

    layout.add(std::make_unique<juce::AudioParameterFloat>(
        "drift", "Analog Drift", 
        juce::NormalisableRange<float>(0.0f, 1.0f), 
        0.2f));

    layout.add(std::make_unique<juce::AudioParameterBool>(
        "deadArp", "Dead ARP", 
        false));

    return layout;
}

// Обновление параметров
void DroneSynthAudioProcessor::updateParameters()
{
    const float globalDrift = parameters.getRawParameterValue("drift")->load();
    
    for (int i = 0; i < 5; ++i) {
        float freq = parameters.getRawParameterValue("osc" + juce::String(i) + "Freq")->load();
        freq *= (1.0f + globalDrift * 0.5f * (oscillators[i].rand.nextFloat() - 0.5f));
        oscillators[i].osc.setFrequency(freq);

        const float gain = parameters.getRawParameterValue("osc" + juce::String(i) + "Vol")->load();
        oscillators[i].gain.setGainLinear(gain);
    }

    filter.setCutoffFrequencyHz(parameters.getRawParameterValue("filterCutoff")->load());
    filter.setResonance(parameters.getRawParameterValue("filterReso")->load());
    filter.setMode(static_cast<juce::dsp::LadderFilterMode>(
        parameters.getRawParameterValue("filterMode")->load()));

    updateDeadArp();

    float driftAmount = parameters.getRawParameterValue("drift")->load();
    for (int i = 0; i < 5; ++i) {
        float freq = parameters.getRawParameterValue("osc" + juce::String(i) + "Freq")->load();
        freq *= (1.0f + driftAmount * 0.1f * (oscillators[i].rand.nextFloat() - 0.5f));  // Увеличиваем влияние
        oscillators[i].osc.setFrequency(freq);
    }  
}

// Обновление Dead ARP эффекта
void DroneSynthAudioProcessor::updateDeadArp()
{
    const bool deadArpEnabled = parameters.getRawParameterValue("deadArp")->load() > 0.5f;

    if (deadArpEnabled) {
        deadArpPhase += deadArpIncrement;
        if (deadArpPhase >= 1.0f) {
            deadArpPhase -= 1.0f;
        }

        const float baseFreq = parameters.getRawParameterValue("osc0Freq")->load();
        for (int i = 0; i < 5; ++i) {
            const float freq = baseFreq * (1.0f + i * 0.2f * deadArpPhase);
            oscillators[i].osc.setFrequency(freq);
        }
    }
}

juce::AudioProcessorEditor* DroneSynthAudioProcessor::createEditor() {
    return new DroneSynthAudioProcessorEditor(*this);
}

// Сохранение состояния
void DroneSynthAudioProcessor::getStateInformation(juce::MemoryBlock& destData)
{
    auto state = parameters.copyState();
    std::unique_ptr<juce::XmlElement> xml(state.createXml());
    copyXmlToBinary(*xml, destData);
}

void DroneSynthAudioProcessor::releaseResources()
{
    // Ничего не делаем, но метод обязателен для переопределения
}

// Загрузка состояния
void DroneSynthAudioProcessor::setStateInformation(const void* data, int sizeInBytes)
{
    std::unique_ptr<juce::XmlElement> xmlState(getXmlFromBinary(data, sizeInBytes));
    if (xmlState.get() != nullptr) {
        parameters.replaceState(juce::ValueTree::fromXml(*xmlState));
        updateParameters();
    }
}

// Фабричный метод
juce::AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new DroneSynthAudioProcessor();
}