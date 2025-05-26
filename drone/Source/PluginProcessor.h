#pragma once

#include <JuceHeader.h>

class DroneSynthAudioProcessor : public juce::AudioProcessor
{
public:
    DroneSynthAudioProcessor();
    ~DroneSynthAudioProcessor() override;

    const juce::String getName() const override;
    bool acceptsMidi() const override;
    bool producesMidi() const override;
    bool isMidiEffect() const override;
    double getTailLengthSeconds() const override;
    
    int getNumPrograms() override;
    int getCurrentProgram() override;
    void setCurrentProgram(int index) override;
    const juce::String getProgramName(int index) override;
    void changeProgramName(int index, const juce::String& newName) override;

    void prepareToPlay(double sampleRate, int samplesPerBlock) override;
    void releaseResources() override;

    //bool isBusesLayoutSupported(const BusesLayout&) const override { return true; }
    void processBlock(juce::AudioBuffer<float>& buffer, juce::MidiBuffer& midiMessages) override;

    
    bool hasEditor() const override;
    juce::AudioProcessorEditor* createEditor() override;
    void getStateInformation(juce::MemoryBlock& destData) override;
    void setStateInformation(const void* data, int sizeInBytes) override;

    juce::AudioProcessorValueTreeState parameters;

private:
    struct AnalogOscillator
    {
        AnalogOscillator() : rand(juce::Time::currentTimeMillis()) {}
        void prepare(const juce::dsp::ProcessSpec& spec)
        {
            osc.prepare(spec);
            gain.prepare(spec);
            phase = 0.0f;
        }

        float processSample(float input)
        {
            // Аналоговый дрейф и нестабильность
            float drift = 1.0f + 0.03f * (rand.nextFloat() - 0.5f);
            float sample = osc.processSample(input) * drift;
            
            // Добавляем небольшую нелинейность
            sample = std::tanh(sample * 1.5f);
            
            // Применяем gain с плавным изменением
            return gain.processSample(sample);
        }

        juce::dsp::Oscillator<float> osc;
        juce::dsp::Gain<float> gain;
        float phase;
        juce::Random rand;
    };

    void updateParameters();
    void updateDeadArp();
    juce::AudioProcessorValueTreeState::ParameterLayout createParameterLayout();

    std::array<AnalogOscillator, 5> oscillators;
    juce::dsp::LadderFilter<float> filter;
    juce::dsp::Gain<float> outputGain;
    juce::dsp::Gain<float> inputGain;
    /// 
    juce::AudioParameterBool* darkModeParam;
    juce::dsp::LinkwitzRileyFilter<float> subFilter;
    /// 
    bool deadArpEnabled = false;
    float deadArpPhase = 0.0f;
    float deadArpIncrement = 0.0f;

    juce::AudioProcessor* JUCE_CALLTYPE createPluginFilter();

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(DroneSynthAudioProcessor)
};
