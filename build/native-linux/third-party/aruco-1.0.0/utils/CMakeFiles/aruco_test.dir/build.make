# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rujian/fuerte_workspace/drone_demo/native

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rujian/fuerte_workspace/drone_demo/build/native-linux

# Include any dependencies generated for this target.
include third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/depend.make

# Include the progress variables for this target.
include third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/flags.make

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o: third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/flags.make
third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o: /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/utils/aruco_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/build/native-linux/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/utils && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco_test.dir/aruco_test.cpp.o -c /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/utils/aruco_test.cpp

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco_test.dir/aruco_test.cpp.i"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/utils/aruco_test.cpp > CMakeFiles/aruco_test.dir/aruco_test.cpp.i

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco_test.dir/aruco_test.cpp.s"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/utils && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/utils/aruco_test.cpp -o CMakeFiles/aruco_test.dir/aruco_test.cpp.s

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.requires:
.PHONY : third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.requires

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.provides: third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.requires
	$(MAKE) -f third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/build.make third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.provides.build
.PHONY : third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.provides

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.provides.build: third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o

# Object files for target aruco_test
aruco_test_OBJECTS = \
"CMakeFiles/aruco_test.dir/aruco_test.cpp.o"

# External object files for target aruco_test
aruco_test_EXTERNAL_OBJECTS =

third-party/aruco-1.0.0/utils/aruco_test: third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o
third-party/aruco-1.0.0/utils/aruco_test: third-party/aruco-1.0.0/src/libaruco.so.1.0.0
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_calib3d.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_contrib.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_core.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_features2d.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_flann.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_gpu.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_highgui.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_imgproc.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_legacy.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_ml.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_nonfree.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_objdetect.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_photo.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_stitching.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_ts.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_video.so
third-party/aruco-1.0.0/utils/aruco_test: /opt/ros/fuerte/lib/libopencv_videostab.so
third-party/aruco-1.0.0/utils/aruco_test: third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/build.make
third-party/aruco-1.0.0/utils/aruco_test: third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable aruco_test"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aruco_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/build: third-party/aruco-1.0.0/utils/aruco_test
.PHONY : third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/build

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/requires: third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/aruco_test.cpp.o.requires
.PHONY : third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/requires

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/clean:
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/utils && $(CMAKE_COMMAND) -P CMakeFiles/aruco_test.dir/cmake_clean.cmake
.PHONY : third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/clean

third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/depend:
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rujian/fuerte_workspace/drone_demo/native /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/utils /home/rujian/fuerte_workspace/drone_demo/build/native-linux /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/utils /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/aruco-1.0.0/utils/CMakeFiles/aruco_test.dir/depend

