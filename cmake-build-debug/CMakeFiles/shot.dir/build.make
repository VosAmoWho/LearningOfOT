# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/amowhovos/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.5429.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/amowhovos/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/183.5429.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/amowhovos/code/MPC/EMP/ot-client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/amowhovos/code/MPC/EMP/ot-client/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/shot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/shot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/shot.dir/flags.make

CMakeFiles/shot.dir/test/shot.cpp.o: CMakeFiles/shot.dir/flags.make
CMakeFiles/shot.dir/test/shot.cpp.o: ../test/shot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/amowhovos/code/MPC/EMP/ot-client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/shot.dir/test/shot.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/shot.dir/test/shot.cpp.o -c /Users/amowhovos/code/MPC/EMP/ot-client/test/shot.cpp

CMakeFiles/shot.dir/test/shot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/shot.dir/test/shot.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/amowhovos/code/MPC/EMP/ot-client/test/shot.cpp > CMakeFiles/shot.dir/test/shot.cpp.i

CMakeFiles/shot.dir/test/shot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/shot.dir/test/shot.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/amowhovos/code/MPC/EMP/ot-client/test/shot.cpp -o CMakeFiles/shot.dir/test/shot.cpp.s

# Object files for target shot
shot_OBJECTS = \
"CMakeFiles/shot.dir/test/shot.cpp.o"

# External object files for target shot
shot_EXTERNAL_OBJECTS =

bin/shot: CMakeFiles/shot.dir/test/shot.cpp.o
bin/shot: CMakeFiles/shot.dir/build.make
bin/shot: /usr/local/lib/librelic.dylib
bin/shot: /usr/local/Cellar/openssl/1.0.2r/lib/libssl.dylib
bin/shot: /usr/local/Cellar/openssl/1.0.2r/lib/libcrypto.dylib
bin/shot: /usr/local/lib/libboost_system-mt.dylib
bin/shot: /usr/local/lib/libgmp.dylib
bin/shot: /usr/local/lib/libemp-tool.dylib
bin/shot: CMakeFiles/shot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/amowhovos/code/MPC/EMP/ot-client/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/shot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/shot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/shot.dir/build: bin/shot

.PHONY : CMakeFiles/shot.dir/build

CMakeFiles/shot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/shot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/shot.dir/clean

CMakeFiles/shot.dir/depend:
	cd /Users/amowhovos/code/MPC/EMP/ot-client/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/amowhovos/code/MPC/EMP/ot-client /Users/amowhovos/code/MPC/EMP/ot-client /Users/amowhovos/code/MPC/EMP/ot-client/cmake-build-debug /Users/amowhovos/code/MPC/EMP/ot-client/cmake-build-debug /Users/amowhovos/code/MPC/EMP/ot-client/cmake-build-debug/CMakeFiles/shot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/shot.dir/depend
