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
CMAKE_SOURCE_DIR = /home/testus/repos/c_learing/projects/tcpip_server/dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/testus/repos/c_learing/projects/tcpip_server/dev/40_build

# Include any dependencies generated for this target.
include CMakeFiles/tcpip_server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tcpip_server.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tcpip_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcpip_server.dir/flags.make

CMakeFiles/tcpip_server.dir/00_src/main.cpp.o: CMakeFiles/tcpip_server.dir/flags.make
CMakeFiles/tcpip_server.dir/00_src/main.cpp.o: /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/main.cpp
CMakeFiles/tcpip_server.dir/00_src/main.cpp.o: CMakeFiles/tcpip_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/testus/repos/c_learing/projects/tcpip_server/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcpip_server.dir/00_src/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcpip_server.dir/00_src/main.cpp.o -MF CMakeFiles/tcpip_server.dir/00_src/main.cpp.o.d -o CMakeFiles/tcpip_server.dir/00_src/main.cpp.o -c /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/main.cpp

CMakeFiles/tcpip_server.dir/00_src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcpip_server.dir/00_src/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/main.cpp > CMakeFiles/tcpip_server.dir/00_src/main.cpp.i

CMakeFiles/tcpip_server.dir/00_src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcpip_server.dir/00_src/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/main.cpp -o CMakeFiles/tcpip_server.dir/00_src/main.cpp.s

CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o: CMakeFiles/tcpip_server.dir/flags.make
CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o: /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/tcpip_server.cpp
CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o: CMakeFiles/tcpip_server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/testus/repos/c_learing/projects/tcpip_server/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o -MF CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o.d -o CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o -c /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/tcpip_server.cpp

CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/tcpip_server.cpp > CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.i

CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/testus/repos/c_learing/projects/tcpip_server/dev/00_src/tcpip_server.cpp -o CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.s

# Object files for target tcpip_server
tcpip_server_OBJECTS = \
"CMakeFiles/tcpip_server.dir/00_src/main.cpp.o" \
"CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o"

# External object files for target tcpip_server
tcpip_server_EXTERNAL_OBJECTS =

/home/testus/repos/c_learing/projects/tcpip_server/dev/10_bin/tcpip_server: CMakeFiles/tcpip_server.dir/00_src/main.cpp.o
/home/testus/repos/c_learing/projects/tcpip_server/dev/10_bin/tcpip_server: CMakeFiles/tcpip_server.dir/00_src/tcpip_server.cpp.o
/home/testus/repos/c_learing/projects/tcpip_server/dev/10_bin/tcpip_server: CMakeFiles/tcpip_server.dir/build.make
/home/testus/repos/c_learing/projects/tcpip_server/dev/10_bin/tcpip_server: CMakeFiles/tcpip_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/testus/repos/c_learing/projects/tcpip_server/dev/40_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/testus/repos/c_learing/projects/tcpip_server/dev/10_bin/tcpip_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcpip_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcpip_server.dir/build: /home/testus/repos/c_learing/projects/tcpip_server/dev/10_bin/tcpip_server
.PHONY : CMakeFiles/tcpip_server.dir/build

CMakeFiles/tcpip_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcpip_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcpip_server.dir/clean

CMakeFiles/tcpip_server.dir/depend:
	cd /home/testus/repos/c_learing/projects/tcpip_server/dev/40_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/testus/repos/c_learing/projects/tcpip_server/dev /home/testus/repos/c_learing/projects/tcpip_server/dev /home/testus/repos/c_learing/projects/tcpip_server/dev/40_build /home/testus/repos/c_learing/projects/tcpip_server/dev/40_build /home/testus/repos/c_learing/projects/tcpip_server/dev/40_build/CMakeFiles/tcpip_server.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tcpip_server.dir/depend

