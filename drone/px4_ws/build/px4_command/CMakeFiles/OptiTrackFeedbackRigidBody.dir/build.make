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
include px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/depend.make

# Include the progress variables for this target.
include px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/progress.make

# Include the compile flags for this target's objects.
include px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/flags.make

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o: px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/flags.make
px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o: /home/amov/px4_ws/src/px4_command/src/lib/OptiTrackFeedBackRigidBody.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amov/px4_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o"
	cd /home/amov/px4_ws/build/px4_command && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o -c /home/amov/px4_ws/src/px4_command/src/lib/OptiTrackFeedBackRigidBody.cpp

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.i"
	cd /home/amov/px4_ws/build/px4_command && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/amov/px4_ws/src/px4_command/src/lib/OptiTrackFeedBackRigidBody.cpp > CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.i

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.s"
	cd /home/amov/px4_ws/build/px4_command && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/amov/px4_ws/src/px4_command/src/lib/OptiTrackFeedBackRigidBody.cpp -o CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.s

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.requires:

.PHONY : px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.requires

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.provides: px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.requires
	$(MAKE) -f px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/build.make px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.provides.build
.PHONY : px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.provides

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.provides.build: px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o


# Object files for target OptiTrackFeedbackRigidBody
OptiTrackFeedbackRigidBody_OBJECTS = \
"CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o"

# External object files for target OptiTrackFeedbackRigidBody
OptiTrackFeedbackRigidBody_EXTERNAL_OBJECTS =

/home/amov/px4_ws/devel/lib/libOptiTrackFeedbackRigidBody.so: px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o
/home/amov/px4_ws/devel/lib/libOptiTrackFeedbackRigidBody.so: px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/build.make
/home/amov/px4_ws/devel/lib/libOptiTrackFeedbackRigidBody.so: px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amov/px4_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/amov/px4_ws/devel/lib/libOptiTrackFeedbackRigidBody.so"
	cd /home/amov/px4_ws/build/px4_command && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OptiTrackFeedbackRigidBody.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/build: /home/amov/px4_ws/devel/lib/libOptiTrackFeedbackRigidBody.so

.PHONY : px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/build

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/requires: px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/src/lib/OptiTrackFeedBackRigidBody.cpp.o.requires

.PHONY : px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/requires

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/clean:
	cd /home/amov/px4_ws/build/px4_command && $(CMAKE_COMMAND) -P CMakeFiles/OptiTrackFeedbackRigidBody.dir/cmake_clean.cmake
.PHONY : px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/clean

px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/depend:
	cd /home/amov/px4_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amov/px4_ws/src /home/amov/px4_ws/src/px4_command /home/amov/px4_ws/build /home/amov/px4_ws/build/px4_command /home/amov/px4_ws/build/px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : px4_command/CMakeFiles/OptiTrackFeedbackRigidBody.dir/depend

