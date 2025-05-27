#include "PluginEditor.h"

PedalLookAndFeel::PedalLookAndFeel()
{
    setColour(juce::Slider::thumbColourId, juce::Colours::white);
    setColour(juce::Slider::rotarySliderFillColourId, juce::Colours::white);
    setColour(juce::Slider::rotarySliderOutlineColourId, juce::Colours::white);
    setColour(juce::ToggleButton::tickColourId, juce::Colours::red);
    setColour(juce::ToggleButton::tickDisabledColourId, juce::Colours::darkred);
}

void PedalLookAndFeel::drawRotarySlider(juce::Graphics& g, int x, int y, int width, int height,
                                       float sliderPos, float rotaryStartAngle, float rotaryEndAngle,
                                       juce::Slider& slider)
{
    auto radius = (float)juce::jmin(width / 2, height / 2) - 4.0f;
    auto centreX = (float)x + (float)width * 0.5f;
    auto centreY = (float)y + (float)height * 0.5f;
    auto angle = rotaryStartAngle + sliderPos * (rotaryEndAngle - rotaryStartAngle);

    // Металлическое кольцо
    g.setColour(juce::Colours::white);
    juce::Path outlineArc;
    outlineArc.addCentredArc(centreX, centreY, radius, radius, 0.0f,
                           rotaryStartAngle, rotaryEndAngle, true);
    g.strokePath(outlineArc, juce::PathStrokeType(4.0f));

    // Указатель
    juce::Path p;
    auto pointerLength = radius * 0.6f;
    auto pointerThickness = 3.0f;
    p.addRectangle(-pointerThickness * 0.5f, -radius, pointerThickness, pointerLength);
    p.applyTransform(juce::AffineTransform::rotation(angle).translated(centreX, centreY));
    g.setColour(juce::Colours::white);
    g.fillPath(p);
}

void PedalLookAndFeel::drawToggleButton(juce::Graphics& g, juce::ToggleButton& button,
                                      bool shouldDrawButtonAsHighlighted, bool shouldDrawButtonAsDown)
{
    auto bounds = button.getLocalBounds().toFloat().reduced(2.0f);
    auto baseColour = juce::Colour(0xff404040)
        .withMultipliedSaturation(button.hasKeyboardFocus(true) ? 1.3f : 0.9f)
        .withMultipliedAlpha(button.isEnabled() ? 1.0f : 0.5f);

    if (shouldDrawButtonAsDown || shouldDrawButtonAsHighlighted)
        baseColour = baseColour.contrasting(shouldDrawButtonAsDown ? 0.2f : 0.05f);

    g.setColour(baseColour);
    g.fillRoundedRectangle(bounds, 4.0f);

    g.setColour(juce::Colours::white);
    g.drawRoundedRectangle(bounds, 4.0f, 1.0f);

    if (button.getToggleState())
    {
        g.setColour(juce::Colours::red.withAlpha(0.6f));
        g.fillRoundedRectangle(bounds.reduced(1.0f), 3.0f);
    }

    g.setColour(juce::Colours::white);
    g.setFont(juce::Font(juce::FontOptions{14.0f, juce::Font::bold}));
    g.drawText(button.getButtonText(), bounds, juce::Justification::centred, false);
}

DroneSynthAudioProcessorEditor::DroneSynthAudioProcessorEditor(DroneSynthAudioProcessor& p)
    : AudioProcessorEditor(&p), audioProcessor(p)
{
    setLookAndFeel(&pedalLookAndFeel);
    setSize(1000, 415);

    startTimerHz(30);

    // Настройка слайдеров осцилляторов
    for (int i = 0; i < 5; ++i)
    {
        oscVolSliders[i].setSliderStyle(juce::Slider::Rotary);
        oscVolSliders[i].setTextBoxStyle(juce::Slider::NoTextBox, false, 0, 0);
        addAndMakeVisible(oscVolSliders[i]);

        oscFreqSliders[i].setSliderStyle(juce::Slider::Rotary);
        oscFreqSliders[i].setTextBoxStyle(juce::Slider::NoTextBox, false, 0, 0);
        addAndMakeVisible(oscFreqSliders[i]);

        oscVolAttachments[i] = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
            audioProcessor.parameters, "osc" + juce::String(i) + "Vol", oscVolSliders[i]);

        oscFreqAttachments[i] = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
            audioProcessor.parameters, "osc" + juce::String(i) + "Freq", oscFreqSliders[i]);
    }

    // Основные элементы управления
    outputVolSlider.setSliderStyle(juce::Slider::Rotary);
    outputVolSlider.setTextBoxStyle(juce::Slider::NoTextBox, false, 0, 0);
    addAndMakeVisible(outputVolSlider);
    outputVolAttachment = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
        audioProcessor.parameters, "outputVol", outputVolSlider);

    filterCutoffSlider.setSliderStyle(juce::Slider::Rotary);
    filterCutoffSlider.setTextBoxStyle(juce::Slider::NoTextBox, false, 0, 0);
    addAndMakeVisible(filterCutoffSlider);
    filterCutoffAttachment = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
        audioProcessor.parameters, "filterCutoff", filterCutoffSlider);

    filterResoSlider.setSliderStyle(juce::Slider::Rotary);
    filterResoSlider.setTextBoxStyle(juce::Slider::NoTextBox, false, 0, 0);
    addAndMakeVisible(filterResoSlider);
    filterResoAttachment = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
        audioProcessor.parameters, "filterReso", filterResoSlider);

    inputGainSlider.setSliderStyle(juce::Slider::Rotary);
    inputGainSlider.setTextBoxStyle(juce::Slider::NoTextBox, false, 0, 0);
    addAndMakeVisible(inputGainSlider);
    inputGainAttachment = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
        audioProcessor.parameters, "inputGain", inputGainSlider);

    driftSlider.setSliderStyle(juce::Slider::Rotary);
    driftSlider.setTextBoxStyle(juce::Slider::NoTextBox, false, 0, 0);
    addAndMakeVisible(driftSlider);
    driftAttachment = std::make_unique<juce::AudioProcessorValueTreeState::SliderAttachment>(
        audioProcessor.parameters, "drift", driftSlider);

    // Настройка фильтра
    filterModeBox.addItemList(audioProcessor.parameters.getParameter("filterMode")->getAllValueStrings(), 1);
    addAndMakeVisible(filterModeBox);
    filterModeAttachment = std::make_unique<juce::AudioProcessorValueTreeState::ComboBoxAttachment>(
        audioProcessor.parameters, "filterMode", filterModeBox);

    // Кнопка Dead ARP
    deadArpButton.setButtonText("DEAD ARP");
    deadArpButton.setClickingTogglesState(true);
    addAndMakeVisible(deadArpButton);
    deadArpAttachment = std::make_unique<juce::AudioProcessorValueTreeState::ButtonAttachment>(
        audioProcessor.parameters, "deadArp", deadArpButton);
}

DroneSynthAudioProcessorEditor::~DroneSynthAudioProcessorEditor()
{
    stopTimer(); 
    setLookAndFeel(nullptr);
}

void DroneSynthAudioProcessorEditor::updateParametersFromProcessor() {
    // Здесь логика обновления GUI из параметров процессора
    // Или просто оставь пустым для начала
}


void DroneSynthAudioProcessorEditor::timerCallback()
{
    if (!isGuiReady) {
        updateParametersFromProcessor();
        isGuiReady = true;
    }
}

void DroneSynthAudioProcessorEditor::paint(juce::Graphics& g)
{
    // juce::Colour rustyOrange = juce::Colour::fromRGB(70, 70, 70);
    // g.fillAll(rustyOrange);

    auto background = juce::ImageCache::getFromMemory(BinaryData::background_png, BinaryData::background_pngSize);
    
    if (!background.isNull())
    {
        // Растягиваем на весь экран
        g.drawImage(background, getLocalBounds().toFloat());
    }
    else
    {
        // Фоллбэк если изображение не загружено
        g.fillAll(juce::Colour(70, 70, 70));
    }

    // Потёртости по краям
    g.setColour(juce::Colours::white.withAlpha(0.2f));
    g.fillRect(0, 0, getWidth(), 10);
    g.fillRect(0, getHeight() - 10, getWidth(), 10);
    g.fillRect(0, 0, 10, getHeight());
    g.fillRect(getWidth() - 10, 0, 10, getHeight());

    // Заголовок
    g.setColour(juce::Colours::white);
    g.setFont(juce::Font(juce::FontOptions{"DIN", 36.0f, juce::Font::bold}));
    g.drawText("D R O O O O O O O O O N E", 0, 10, getWidth(), 50, juce::Justification::centred);

    // Подписи к OSC
    g.setFont(14.0f);
    for (int i = 0; i < 5; ++i)
    {
        int sectionWidth = getWidth() / 5;
        int x = sectionWidth * i;
        g.drawText("osc " + juce::String(i + 1), x,68, sectionWidth, 20, juce::Justification::centred); /////!!!!
        g.drawText("", x, 115, sectionWidth, 20, juce::Justification::centred);
        g.drawText("pitch", x, 210, sectionWidth, 20, juce::Justification::centred);
    }

    // Остальные подписи
    g.drawText("filter", 90, 257, 100, 20, juce::Justification::centred);
    g.drawText("input", 250, 257, 100, 20, juce::Justification::centred);
    g.drawText("drift", 320, 257, 100, 20, juce::Justification::centred);
    g.drawText("output", 390, 257, 100, 20, juce::Justification::centred);
}

void DroneSynthAudioProcessorEditor::resized()
{
    auto width = getWidth();
    auto height = getHeight();
    int sectionWidth = width / 5;
    int knobSize = 50;
    int spacing = 30;

    // === Oscillators ===
    for (int i = 0; i < 5; ++i)
    {
        int x = sectionWidth * i + (sectionWidth - knobSize) / 2;
        oscVolSliders[i].setBounds(x, 90, knobSize, knobSize);     // Volume — верхняя ручка
        oscFreqSliders[i].setBounds(x, 160, knobSize, knobSize);   // Pitch — нижняя ручка
    }

    // === Filter ===
    filterCutoffSlider.setBounds(76, 280, knobSize, knobSize);
    filterResoSlider.setBounds(146, 280, knobSize, knobSize);

    // === Input / Drift / Output ===
    inputGainSlider.setBounds(274, 280, knobSize, knobSize);
    driftSlider.setBounds(344, 280, knobSize, knobSize);
    outputVolSlider.setBounds(414, 280, knobSize, knobSize);

    // === Dropdown and Button ===
    filterModeBox.setBounds(80, 355, 100, 25);
    deadArpButton.setBounds(width - 172, 355, 100, 25);
}
