# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build

# Include any dependencies generated for this target.
include googlemock/gtest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include googlemock/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make
googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest/googletest/src/gtest_main.cc

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires:

.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides: googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
	$(MAKE) -f googlemock/gtest/CMakeFiles/gtest_main.dir/build.make googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build
.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides

googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build: googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o


# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

googlemock/gtest/libgtest_main.a: googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
googlemock/gtest/libgtest_main.a: googlemock/gtest/CMakeFiles/gtest_main.dir/build.make
googlemock/gtest/libgtest_main.a: googlemock/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgtest_main.a"
	cd /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
googlemock/gtest/CMakeFiles/gtest_main.dir/build: googlemock/gtest/libgtest_main.a

.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/build

googlemock/gtest/CMakeFiles/gtest_main.dir/requires: googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires

.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/requires

googlemock/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/clean

googlemock/gtest/CMakeFiles/gtest_main.dir/depend:
	cd /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest/googletest /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest /home/mamoru/Programming/C++/projects/CppStyle/lib/gtest/src/GTest-build/googlemock/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : googlemock/gtest/CMakeFiles/gtest_main.dir/depend

