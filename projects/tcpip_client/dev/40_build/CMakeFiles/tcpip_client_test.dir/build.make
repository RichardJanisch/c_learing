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
include CMakeFiles/tcpip_client_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tcpip_client_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tcpip_client_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcpip_client_test.dir/flags.make

CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o: CMakeFiles/tcpip_client_test.dir/flags.make
CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o: /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/tcpip_client_test.cpp
CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o: CMakeFiles/tcpip_client_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o -MF CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o.d -o CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o -c /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/tcpip_client_test.cpp

CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/tcpip_client_test.cpp > CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.i

CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/testus/repos/c_learing/projects/tcpip_client/dev/20_tests/tcpip_client_test.cpp -o CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.s

CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o: CMakeFiles/tcpip_client_test.dir/flags.make
CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o: /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/tcpip_client.cpp
CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o: CMakeFiles/tcpip_client_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o -MF CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o.d -o CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o -c /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/tcpip_client.cpp

CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/tcpip_client.cpp > CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.i

CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/testus/repos/c_learing/projects/tcpip_client/dev/00_src/tcpip_client.cpp -o CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.s

# Object files for target tcpip_client_test
tcpip_client_test_OBJECTS = \
"CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o" \
"CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o"

# External object files for target tcpip_client_test
tcpip_client_test_EXTERNAL_OBJECTS =

/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: CMakeFiles/tcpip_client_test.dir/20_tests/tcpip_client_test.cpp.o
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: CMakeFiles/tcpip_client_test.dir/00_src/tcpip_client.cpp.o
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: CMakeFiles/tcpip_client_test.dir/build.make
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.83.0
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.83.0
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.83.0
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: /usr/lib/x86_64-linux-gnu/libgtest_main.a
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: /usr/lib/x86_64-linux-gnu/libgtest.a
/home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test: CMakeFiles/tcpip_client_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpip_client_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcpip_client_test.dir/build: /home/testus/repos/c_learing/projects/tcpip_client/dev/10_bin/tcpip_client_test
.PHONY : CMakeFiles/tcpip_client_test.dir/build

CMakeFiles/tcpip_client_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcpip_client_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcpip_client_test.dir/clean

CMakeFiles/tcpip_client_test.dir/depend:
	cd /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/testus/repos/c_learing/projects/tcpip_client/dev /home/testus/repos/c_learing/projects/tcpip_client/dev /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build /home/testus/repos/c_learing/projects/tcpip_client/dev/40_build/CMakeFiles/tcpip_client_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tcpip_client_test.dir/depend

