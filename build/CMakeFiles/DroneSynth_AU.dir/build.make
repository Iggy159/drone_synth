# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/egor/drone_synth

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/egor/drone_synth/build

# Include any dependencies generated for this target.
include CMakeFiles/DroneSynth_AU.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DroneSynth_AU.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DroneSynth_AU.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DroneSynth_AU.dir/flags.make

DroneSynth_artefacts/JuceLibraryCode/DroneSynth_AU/PkgInfo:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating DroneSynth_artefacts/JuceLibraryCode/DroneSynth_AU/PkgInfo"
	externals/JUCE/tools/extras/Build/juceaide/juceaide_artefacts/Custom/juceaide pkginfo AU /Users/egor/drone_synth/build/DroneSynth_artefacts/JuceLibraryCode/DroneSynth_AU/PkgInfo

CMakeFiles/DroneSynth_AU.dir/codegen:
.PHONY : CMakeFiles/DroneSynth_AU.dir/codegen

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.s

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o: CMakeFiles/DroneSynth_AU.dir/flags.make
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o: /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm
CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o: CMakeFiles/DroneSynth_AU.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o -MF CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o.d -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o -c /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm > CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.i

CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/egor/drone_synth/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm -o CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.s

# Object files for target DroneSynth_AU
DroneSynth_AU_OBJECTS = \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o" \
"CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o"

# External object files for target DroneSynth_AU
DroneSynth_AU_EXTERNAL_OBJECTS =

DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX_utils.cpp.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_ARA.cpp.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_LV2.mm.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.mm.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/externals/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.mm.o
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/build.make
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: DroneSynth_artefacts/Release/libDroneSynth_SharedCode.a
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: libDroneAssets.a
DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth: CMakeFiles/DroneSynth_AU.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/egor/drone_synth/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX CFBundle shared module DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DroneSynth_AU.dir/link.txt --verbose=$(VERBOSE)
	/usr/local/bin/cmake -E copy /Users/egor/drone_synth/build/DroneSynth_artefacts/JuceLibraryCode/DroneSynth_AU/PkgInfo /Users/egor/drone_synth/build/DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents
	/usr/local/bin/cmake -Dsrc=/Users/egor/drone_synth/build/DroneSynth_artefacts/Release/AU/DroneSynth.component -P /Users/egor/drone_synth/externals/JUCE/extras/Build/CMake/checkBundleSigning.cmake
	/usr/local/bin/cmake -Dsrc=/Users/egor/drone_synth/build/DroneSynth_artefacts/Release/AU/DroneSynth.component -Ddest=/Users/egor/Library/Audio/Plug-Ins/Components -P /Users/egor/drone_synth/externals/JUCE/extras/Build/CMake/copyDir.cmake

# Rule to build all files generated by this target.
CMakeFiles/DroneSynth_AU.dir/build: DroneSynth_artefacts/Release/AU/DroneSynth.component/Contents/MacOS/DroneSynth
.PHONY : CMakeFiles/DroneSynth_AU.dir/build

CMakeFiles/DroneSynth_AU.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DroneSynth_AU.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DroneSynth_AU.dir/clean

CMakeFiles/DroneSynth_AU.dir/depend: DroneSynth_artefacts/JuceLibraryCode/DroneSynth_AU/PkgInfo
	cd /Users/egor/drone_synth/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/egor/drone_synth /Users/egor/drone_synth /Users/egor/drone_synth/build /Users/egor/drone_synth/build /Users/egor/drone_synth/build/CMakeFiles/DroneSynth_AU.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/DroneSynth_AU.dir/depend

