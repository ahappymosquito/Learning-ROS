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

# Utility rule file for demo1_geneus.

# Include the progress variables for this target.
include demo1/CMakeFiles/demo1_geneus.dir/progress.make

demo1_geneus: demo1/CMakeFiles/demo1_geneus.dir/build.make

.PHONY : demo1_geneus

# Rule to build all files generated by this target.
demo1/CMakeFiles/demo1_geneus.dir/build: demo1_geneus

.PHONY : demo1/CMakeFiles/demo1_geneus.dir/build

demo1/CMakeFiles/demo1_geneus.dir/clean:
	cd /home/neo/demo2/build/demo1 && $(CMAKE_COMMAND) -P CMakeFiles/demo1_geneus.dir/cmake_clean.cmake
.PHONY : demo1/CMakeFiles/demo1_geneus.dir/clean

demo1/CMakeFiles/demo1_geneus.dir/depend:
	cd /home/neo/demo2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/neo/demo2/src /home/neo/demo2/src/demo1 /home/neo/demo2/build /home/neo/demo2/build/demo1 /home/neo/demo2/build/demo1/CMakeFiles/demo1_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo1/CMakeFiles/demo1_geneus.dir/depend
