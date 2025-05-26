#pragma once

#include <JuceHeader.h>
#include "PluginProcessor.h"
#include "BinaryData.h"  

class PedalLookAndFeel : public juce::LookAndFeel_V4
{
public:
    PedalLookAndFeel();
    void drawRotarySlider(juce::Graphics&, int x, int y, int width, int height,
                         float sliderPos, float rotaryStartAngle, float rotaryEndAngle,
                         juce::Slider&) override;
    void drawToggleButton(juce::Graphics&, juce::ToggleButton&, bool shouldDrawButtonAsHighlighted, bool shouldDrawButtonAsDown) override;
};

class DroneSynthAudioProcessorEditor : public juce::AudioProcessorEditor,
                                      private juce::Timer  // Добавляем наследование от Timer
{
public:
    DroneSynthAudioProcessorEditor(DroneSynthAudioProcessor&);
    ~DroneSynthAudioProcessorEditor() override;

    void paint(juce::Graphics&) override;
    void resized() override;
    void updateParametersFromProcessor();

private:
    void timerCallback() override;  // Теперь правильно, так как унаследовано от Timer

    DroneSynthAudioProcessor& audioProcessor;
    PedalLookAndFeel pedalLookAndFeel;

    std::array<juce::Slider, 5> oscVolSliders;
    std::array<juce::Slider, 5> oscFreqSliders;
    juce::Slider outputVolSlider;
    juce::Slider filterCutoffSlider;
    juce::Slider filterResoSlider;
    juce::Slider inputGainSlider;
    juce::Slider driftSlider;
    juce::ToggleButton deadArpButton;

    juce::ComboBox filterModeBox;

    
    std::atomic<bool> isGuiReady {false};

    std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment> outputVolAttachment;
    std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment> filterCutoffAttachment;
    std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment> filterResoAttachment;
    std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment> inputGainAttachment;
    std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment> driftAttachment;
    std::unique_ptr<juce::AudioProcessorValueTreeState::ButtonAttachment> deadArpAttachment;
    std::unique_ptr<juce::AudioProcessorValueTreeState::ComboBoxAttachment> filterModeAttachment;

    std::array<std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment>, 5> oscVolAttachments;
    std::array<std::unique_ptr<juce::AudioProcessorValueTreeState::SliderAttachment>, 5> oscFreqAttachments;

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR(DroneSynthAudioProcessorEditor)
};
