# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/minghe/gemm_hls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/minghe/gemm_hls/build

# Utility rule file for compile_hw_emu.

# Include any custom commands dependencies for this target.
include CMakeFiles/compile_hw_emu.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/compile_hw_emu.dir/progress.make

CMakeFiles/compile_hw_emu:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/minghe/gemm_hls/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Compiling hardware emulation targets."

compile_hw_emu: CMakeFiles/compile_hw_emu
compile_hw_emu: CMakeFiles/compile_hw_emu.dir/build.make
.PHONY : compile_hw_emu

# Rule to build all files generated by this target.
CMakeFiles/compile_hw_emu.dir/build: compile_hw_emu
.PHONY : CMakeFiles/compile_hw_emu.dir/build

CMakeFiles/compile_hw_emu.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/compile_hw_emu.dir/cmake_clean.cmake
.PHONY : CMakeFiles/compile_hw_emu.dir/clean

CMakeFiles/compile_hw_emu.dir/depend:
	cd /home/minghe/gemm_hls/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/minghe/gemm_hls /home/minghe/gemm_hls /home/minghe/gemm_hls/build /home/minghe/gemm_hls/build /home/minghe/gemm_hls/build/CMakeFiles/compile_hw_emu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/compile_hw_emu.dir/depend

