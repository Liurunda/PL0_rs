# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/liurd18/compiler_lab/clang/pl0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/liurd18/compiler_lab/clang/pl0

# Include any dependencies generated for this target.
include CMakeFiles/pl0.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pl0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pl0.dir/flags.make

CMakeFiles/pl0.dir/pl0.c.o: CMakeFiles/pl0.dir/flags.make
CMakeFiles/pl0.dir/pl0.c.o: pl0.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/liurd18/compiler_lab/clang/pl0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pl0.dir/pl0.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pl0.dir/pl0.c.o   -c /home/liurd18/compiler_lab/clang/pl0/pl0.c

CMakeFiles/pl0.dir/pl0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pl0.dir/pl0.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/liurd18/compiler_lab/clang/pl0/pl0.c > CMakeFiles/pl0.dir/pl0.c.i

CMakeFiles/pl0.dir/pl0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pl0.dir/pl0.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/liurd18/compiler_lab/clang/pl0/pl0.c -o CMakeFiles/pl0.dir/pl0.c.s

CMakeFiles/pl0.dir/pl0.c.o.requires:

.PHONY : CMakeFiles/pl0.dir/pl0.c.o.requires

CMakeFiles/pl0.dir/pl0.c.o.provides: CMakeFiles/pl0.dir/pl0.c.o.requires
	$(MAKE) -f CMakeFiles/pl0.dir/build.make CMakeFiles/pl0.dir/pl0.c.o.provides.build
.PHONY : CMakeFiles/pl0.dir/pl0.c.o.provides

CMakeFiles/pl0.dir/pl0.c.o.provides.build: CMakeFiles/pl0.dir/pl0.c.o


# Object files for target pl0
pl0_OBJECTS = \
"CMakeFiles/pl0.dir/pl0.c.o"

# External object files for target pl0
pl0_EXTERNAL_OBJECTS =

pl0: CMakeFiles/pl0.dir/pl0.c.o
pl0: CMakeFiles/pl0.dir/build.make
pl0: CMakeFiles/pl0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/liurd18/compiler_lab/clang/pl0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pl0"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pl0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pl0.dir/build: pl0

.PHONY : CMakeFiles/pl0.dir/build

CMakeFiles/pl0.dir/requires: CMakeFiles/pl0.dir/pl0.c.o.requires

.PHONY : CMakeFiles/pl0.dir/requires

CMakeFiles/pl0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pl0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pl0.dir/clean

CMakeFiles/pl0.dir/depend:
	cd /home/liurd18/compiler_lab/clang/pl0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/liurd18/compiler_lab/clang/pl0 /home/liurd18/compiler_lab/clang/pl0 /home/liurd18/compiler_lab/clang/pl0 /home/liurd18/compiler_lab/clang/pl0 /home/liurd18/compiler_lab/clang/pl0/CMakeFiles/pl0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pl0.dir/depend

