# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/neo/demo2/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/neo/demo2/build

# Utility rule file for demo0_gennodejs.

# Include the progress variables for this target.
include demo0/CMakeFiles/demo0_gennodejs.dir/progress.make

demo0_gennodejs: demo0/CMakeFiles/demo0_gennodejs.dir/build.make

.PHONY : demo0_gennodejs

# Rule to build all files generated by this target.
demo0/CMakeFiles/demo0_gennodejs.dir/build: demo0_gennodejs

.PHONY : demo0/CMakeFiles/demo0_gennodejs.dir/build

demo0/CMakeFiles/demo0_gennodejs.dir/clean:
	cd /home/neo/demo2/build/demo0 && $(CMAKE_COMMAND) -P CMakeFiles/demo0_gennodejs.dir/cmake_clean.cmake
.PHONY : demo0/CMakeFiles/demo0_gennodejs.dir/clean

demo0/CMakeFiles/demo0_gennodejs.dir/depend:
	cd /home/neo/demo2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neo/demo2/src /home/neo/demo2/src/demo0 /home/neo/demo2/build /home/neo/demo2/build/demo0 /home/neo/demo2/build/demo0/CMakeFiles/demo0_gennodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo0/CMakeFiles/demo0_gennodejs.dir/depend

