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
CMAKE_SOURCE_DIR = /home/amov/px4_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amov/px4_ws/build

# Include any dependencies generated for this target.
include px4_command/CMakeFiles/set_mode.dir/depend.make

# Include the progress variables for this target.
include px4_command/CMakeFiles/set_mode.dir/progress.make

# Include the compile flags for this target's objects.
include px4_command/CMakeFiles/set_mode.dir/flags.make

px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o: px4_command/CMakeFiles/set_mode.dir/flags.make
px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o: /home/amov/px4_ws/src/px4_command/src/Utilities/set_mode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amov/px4_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o"
	cd /home/amov/px4_ws/build/px4_command && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o -c /home/amov/px4_ws/src/px4_command/src/Utilities/set_mode.cpp

px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.i"
	cd /home/amov/px4_ws/build/px4_command && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amov/px4_ws/src/px4_command/src/Utilities/set_mode.cpp > CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.i

px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.s"
	cd /home/amov/px4_ws/build/px4_command && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amov/px4_ws/src/px4_command/src/Utilities/set_mode.cpp -o CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.s

px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.requires:

.PHONY : px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.requires

px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.provides: px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.requires
	$(MAKE) -f px4_command/CMakeFiles/set_mode.dir/build.make px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.provides.build
.PHONY : px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.provides

px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.provides.build: px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o


# Object files for target set_mode
set_mode_OBJECTS = \
"CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o"

# External object files for target set_mode
set_mode_EXTERNAL_OBJECTS =

/home/amov/px4_ws/devel/lib/px4_command/set_mode: px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o
/home/amov/px4_ws/devel/lib/px4_command/set_mode: px4_command/CMakeFiles/set_mode.dir/build.make
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libmavros.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libGeographic.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libeigen_conversions.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/liborocos-kdl.so.1.4.0
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libmavconn.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libclass_loader.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/libPocoFoundation.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libdl.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libroslib.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/librospack.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libpython2.7.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_program_options.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libtf2_ros.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libactionlib.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libmessage_filters.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libroscpp.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_signals.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/librosconsole.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_regex.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libtf2.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/librostime.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /opt/ros/melodic/lib/libcpp_common.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_system.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_thread.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_chrono.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_date_time.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libboost_atomic.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libpthread.so
/home/amov/px4_ws/devel/lib/px4_command/set_mode: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
/home/amov/px4_ws/devel/lib/px4_command/set_mode: px4_command/CMakeFiles/set_mode.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amov/px4_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/amov/px4_ws/devel/lib/px4_command/set_mode"
	cd /home/amov/px4_ws/build/px4_command && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/set_mode.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
px4_command/CMakeFiles/set_mode.dir/build: /home/amov/px4_ws/devel/lib/px4_command/set_mode

.PHONY : px4_command/CMakeFiles/set_mode.dir/build

px4_command/CMakeFiles/set_mode.dir/requires: px4_command/CMakeFiles/set_mode.dir/src/Utilities/set_mode.cpp.o.requires

.PHONY : px4_command/CMakeFiles/set_mode.dir/requires

px4_command/CMakeFiles/set_mode.dir/clean:
	cd /home/amov/px4_ws/build/px4_command && $(CMAKE_COMMAND) -P CMakeFiles/set_mode.dir/cmake_clean.cmake
.PHONY : px4_command/CMakeFiles/set_mode.dir/clean

px4_command/CMakeFiles/set_mode.dir/depend:
	cd /home/amov/px4_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amov/px4_ws/src /home/amov/px4_ws/src/px4_command /home/amov/px4_ws/build /home/amov/px4_ws/build/px4_command /home/amov/px4_ws/build/px4_command/CMakeFiles/set_mode.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : px4_command/CMakeFiles/set_mode.dir/depend

