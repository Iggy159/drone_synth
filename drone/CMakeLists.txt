cmake_minimum_required(VERSION 3.15)
project(DroneSynth VERSION 0.0.1)

set(JUCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../JUCE")
add_subdirectory(${JUCE_DIR} ${CMAKE_BINARY_DIR}/JUCE)

juce_add_plugin(DroneSynth
    COMPANY_NAME "fluid"
    IS_SYNTH TRUE
    NEEDS_MIDI_INPUT TRUE
    NEEDS_MIDI_OUTPUT FALSE
    EDITOR_WANTS_KEYBOARD_FOCUS FALSE
    COPY_PLUGIN_AFTER_BUILD TRUE
    PLUGIN_MANUFACTURER_CODE Juce
    PLUGIN_CODE DrnS
    PLUGIN_IS_A_SYNTH TRUE
    PLUGIN_PRODUCES_MIDI_OUTPUT FALSE
    PLUGIN_IS_SYNTH TRUE
    FORMATS VST3 Standalone AU
    PRODUCT_NAME "DroneSynth"
    JUCE_MODULES                     
        juce_audio_utils
        juce_audio_devices
        juce_audio_processors
        juce_audio_plugin_client
        juce_dsp
        juce_core
        juce_data_structures
        juce_gui_basics
        juce_gui_extra
)

target_sources(DroneSynth PRIVATE
    Source/PluginProcessor.cpp
    Source/PluginProcessor.h
    Source/PluginEditor.cpp
    Source/PluginEditor.h
)
juce_add_binary_data(PluginResources
    SOURCES
    Resources/background.png  # Ваш файл фона
)

target_compile_definitions(DroneSynth PRIVATE
    JUCE_WEB_BROWSER=0
    JUCE_USE_CURL=0
)

juce_generate_juce_header(DroneSynth)

target_link_libraries(DroneSynth PRIVATE
    juce::juce_dsp
    PluginResources
)

if (TARGET DroneSynth_Standalone)
    target_link_libraries(DroneSynth_Standalone PRIVATE
        juce::juce_audio_utils
        juce::juce_audio_devices
        juce::juce_dsp
        juce::juce_audio_processors
        juce::juce_gui_basics
        juce::juce_gui_extra       
    )
endif()

