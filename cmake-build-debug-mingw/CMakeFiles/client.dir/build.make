# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2020.2.1\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\qt\project\client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\qt\project\client\cmake-build-debug-mingw

# Include any dependencies generated for this target.
include CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/client.cpp.obj: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/client.cpp.obj: CMakeFiles/client.dir/includes_CXX.rsp
CMakeFiles/client.dir/client.cpp.obj: ../client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\qt\project\client\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/client.dir/client.cpp.obj"
	D:\qt\Tools\mingw730_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\client.dir\client.cpp.obj -c D:\qt\project\client\client.cpp

CMakeFiles/client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/client.cpp.i"
	D:\qt\Tools\mingw730_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\qt\project\client\client.cpp > CMakeFiles\client.dir\client.cpp.i

CMakeFiles/client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/client.cpp.s"
	D:\qt\Tools\mingw730_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\qt\project\client\client.cpp -o CMakeFiles\client.dir\client.cpp.s

CMakeFiles/client.dir/main.cpp.obj: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/main.cpp.obj: CMakeFiles/client.dir/includes_CXX.rsp
CMakeFiles/client.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\qt\project\client\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/client.dir/main.cpp.obj"
	D:\qt\Tools\mingw730_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\client.dir\main.cpp.obj -c D:\qt\project\client\main.cpp

CMakeFiles/client.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/client.dir/main.cpp.i"
	D:\qt\Tools\mingw730_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\qt\project\client\main.cpp > CMakeFiles\client.dir\main.cpp.i

CMakeFiles/client.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/client.dir/main.cpp.s"
	D:\qt\Tools\mingw730_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\qt\project\client\main.cpp -o CMakeFiles\client.dir\main.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/client.cpp.obj" \
"CMakeFiles/client.dir/main.cpp.obj"

# External object files for target client
client_EXTERNAL_OBJECTS =

client.exe: CMakeFiles/client.dir/client.cpp.obj
client.exe: CMakeFiles/client.dir/main.cpp.obj
client.exe: CMakeFiles/client.dir/build.make
client.exe: CMakeFiles/client.dir/linklibs.rsp
client.exe: CMakeFiles/client.dir/objects1.rsp
client.exe: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\qt\project\client\cmake-build-debug-mingw\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable client.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\client.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: client.exe

.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\client.dir\cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\qt\project\client D:\qt\project\client D:\qt\project\client\cmake-build-debug-mingw D:\qt\project\client\cmake-build-debug-mingw D:\qt\project\client\cmake-build-debug-mingw\CMakeFiles\client.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/client.dir/depend

