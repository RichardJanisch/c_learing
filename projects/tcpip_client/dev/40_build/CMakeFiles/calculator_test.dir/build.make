# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/testus/repos/c_learing/projects/tcpip_client/dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build

# Include any dependencies generated for this target.
include CMakeFiles/calculator_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/calculator_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/calculator_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/calculator_test.dir/flags.make

CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o: CMakeFiles/calculator_test.dir/flags.make
CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o: /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/calculator_test.cpp
CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o: CMakeFiles/calculator_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o -MF CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o.d -o CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o -c /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/calculator_test.cpp

CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/calculator_test.cpp > CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.i

CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/calculator_test.cpp -o CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.s

CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o: CMakeFiles/calculator_test.dir/flags.make
CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o: /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/calculator.cpp
CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o: CMakeFiles/calculator_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o -MF CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o.d -o CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o -c /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/calculator.cpp

CMakeFiles/calculator_test.dir/00_src/calculator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/calculator_test.dir/00_src/calculator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/calculator.cpp > CMakeFiles/calculator_test.dir/00_src/calculator.cpp.i

CMakeFiles/calculator_test.dir/00_src/calculator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/calculator_test.dir/00_src/calculator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/calculator.cpp -o CMakeFiles/calculator_test.dir/00_src/calculator.cpp.s

# Object files for target calculator_test
calculator_test_OBJECTS = \
"CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o" \
"CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o"

# External object files for target calculator_test
calculator_test_EXTERNAL_OBJECTS =

/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test: CMakeFiles/calculator_test.dir/20_tests/calculator_test.cpp.o
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test: CMakeFiles/calculator_test.dir/00_src/calculator.cpp.o
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test: CMakeFiles/calculator_test.dir/build.make
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test: /usr/lib/x86_64-linux-gnu/libgtest_main.a
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test: /usr/lib/x86_64-linux-gnu/libgtest.a
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test: CMakeFiles/calculator_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/calculator_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/calculator_test.dir/build: /home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/calculator_test
.PHONY : CMakeFiles/calculator_test.dir/build

CMakeFiles/calculator_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/calculator_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/calculator_test.dir/clean

CMakeFiles/calculator_test.dir/depend:
	cd /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/testus/repos/c_learing/projects/tcpip_client/dev /home/testus/repos/c_learing/projects/tcpip_client/dev /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles/calculator_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/calculator_test.dir/depend
