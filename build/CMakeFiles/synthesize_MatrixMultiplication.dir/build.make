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

# Utility rule file for synthesize_MatrixMultiplication.

# Include any custom commands dependencies for this target.
include CMakeFiles/synthesize_MatrixMultiplication.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/synthesize_MatrixMultiplication.dir/progress.make

CMakeFiles/synthesize_MatrixMultiplication: MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log

MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log: ../kernel/Compute.cpp
MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log: ../kernel/Memory.cpp
MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log: ../kernel/Top.cpp
MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log: ../include/Compute.h
MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log: ../include/MatrixMultiplication.h
MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log: ../include/Memory.h
MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log: Config.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/minghe/gemm_hls/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running high-level synthesis for MatrixMultiplication."
	/home/minghe/Xilinx/Vitis_HLS/2024.1/bin/vitis_hls -f /home/minghe/gemm_hls/build/MatrixMultiplication_synthesis.tcl

synthesize_MatrixMultiplication: CMakeFiles/synthesize_MatrixMultiplication
synthesize_MatrixMultiplication: MatrixMultiplication/xcu250-figd2104-2L-e/xcu250-figd2104-2L-e.log
synthesize_MatrixMultiplication: CMakeFiles/synthesize_MatrixMultiplication.dir/build.make
.PHONY : synthesize_MatrixMultiplication

# Rule to build all files generated by this target.
CMakeFiles/synthesize_MatrixMultiplication.dir/build: synthesize_MatrixMultiplication
.PHONY : CMakeFiles/synthesize_MatrixMultiplication.dir/build

CMakeFiles/synthesize_MatrixMultiplication.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/synthesize_MatrixMultiplication.dir/cmake_clean.cmake
.PHONY : CMakeFiles/synthesize_MatrixMultiplication.dir/clean

CMakeFiles/synthesize_MatrixMultiplication.dir/depend:
	cd /home/minghe/gemm_hls/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/minghe/gemm_hls /home/minghe/gemm_hls /home/minghe/gemm_hls/build /home/minghe/gemm_hls/build /home/minghe/gemm_hls/build/CMakeFiles/synthesize_MatrixMultiplication.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/synthesize_MatrixMultiplication.dir/depend

