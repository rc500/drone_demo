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
include third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/depend.make

# Include the progress variables for this target.
include third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/progress.make

# Include the compile flags for this target's objects.
include third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/flags.make

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/flags.make
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o: /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/marker.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/build/native-linux/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/marker.cpp.o -c /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/marker.cpp

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/marker.cpp.i"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/marker.cpp > CMakeFiles/aruco.dir/marker.cpp.i

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/marker.cpp.s"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/marker.cpp -o CMakeFiles/aruco.dir/marker.cpp.s

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.requires:
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.requires

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.provides: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.requires
	$(MAKE) -f third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build.make third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.provides.build
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.provides

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.provides.build: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/flags.make
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o: /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cameraparameters.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/build/native-linux/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/cameraparameters.cpp.o -c /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cameraparameters.cpp

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/cameraparameters.cpp.i"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cameraparameters.cpp > CMakeFiles/aruco.dir/cameraparameters.cpp.i

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/cameraparameters.cpp.s"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cameraparameters.cpp -o CMakeFiles/aruco.dir/cameraparameters.cpp.s

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires:
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires
	$(MAKE) -f third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build.make third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides.build
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.provides.build: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/flags.make
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o: /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cvdrawingutils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/build/native-linux/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/cvdrawingutils.cpp.o -c /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cvdrawingutils.cpp

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/cvdrawingutils.cpp.i"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cvdrawingutils.cpp > CMakeFiles/aruco.dir/cvdrawingutils.cpp.i

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/cvdrawingutils.cpp.s"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/cvdrawingutils.cpp -o CMakeFiles/aruco.dir/cvdrawingutils.cpp.s

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires:
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires
	$(MAKE) -f third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build.make third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides.build
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.provides.build: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/flags.make
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o: /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/markerdetector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/build/native-linux/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/markerdetector.cpp.o -c /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/markerdetector.cpp

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/markerdetector.cpp.i"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/markerdetector.cpp > CMakeFiles/aruco.dir/markerdetector.cpp.i

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/markerdetector.cpp.s"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/markerdetector.cpp -o CMakeFiles/aruco.dir/markerdetector.cpp.s

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires:
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires
	$(MAKE) -f third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build.make third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides.build
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.provides.build: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/flags.make
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o: /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/boarddetector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/build/native-linux/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/boarddetector.cpp.o -c /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/boarddetector.cpp

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/boarddetector.cpp.i"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/boarddetector.cpp > CMakeFiles/aruco.dir/boarddetector.cpp.i

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/boarddetector.cpp.s"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/boarddetector.cpp -o CMakeFiles/aruco.dir/boarddetector.cpp.s

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires:
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires
	$(MAKE) -f third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build.make third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides.build
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.provides.build: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/flags.make
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o: /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/board.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/build/native-linux/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/aruco.dir/board.cpp.o -c /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/board.cpp

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/aruco.dir/board.cpp.i"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/board.cpp > CMakeFiles/aruco.dir/board.cpp.i

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/aruco.dir/board.cpp.s"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src/board.cpp -o CMakeFiles/aruco.dir/board.cpp.s

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.requires:
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.requires

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.provides: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.requires
	$(MAKE) -f third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build.make third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.provides.build
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.provides

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.provides.build: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o

# Object files for target aruco
aruco_OBJECTS = \
"CMakeFiles/aruco.dir/marker.cpp.o" \
"CMakeFiles/aruco.dir/cameraparameters.cpp.o" \
"CMakeFiles/aruco.dir/cvdrawingutils.cpp.o" \
"CMakeFiles/aruco.dir/markerdetector.cpp.o" \
"CMakeFiles/aruco.dir/boarddetector.cpp.o" \
"CMakeFiles/aruco.dir/board.cpp.o"

# External object files for target aruco
aruco_EXTERNAL_OBJECTS =

third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_calib3d.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_contrib.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_core.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_features2d.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_flann.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_gpu.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_highgui.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_imgproc.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_legacy.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_ml.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_nonfree.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_objdetect.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_photo.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_stitching.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_ts.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_video.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: /opt/ros/fuerte/lib/libopencv_videostab.so
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build.make
third-party/aruco-1.0.0/src/libaruco.so.1.0.0: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libaruco.so"
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/aruco.dir/link.txt --verbose=$(VERBOSE)
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && $(CMAKE_COMMAND) -E cmake_symlink_library libaruco.so.1.0.0 libaruco.so.1.0 libaruco.so

third-party/aruco-1.0.0/src/libaruco.so.1.0: third-party/aruco-1.0.0/src/libaruco.so.1.0.0

third-party/aruco-1.0.0/src/libaruco.so: third-party/aruco-1.0.0/src/libaruco.so.1.0.0

# Rule to build all files generated by this target.
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build: third-party/aruco-1.0.0/src/libaruco.so
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/build

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/requires: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/marker.cpp.o.requires
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/requires: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cameraparameters.cpp.o.requires
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/requires: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/cvdrawingutils.cpp.o.requires
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/requires: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/markerdetector.cpp.o.requires
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/requires: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/boarddetector.cpp.o.requires
third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/requires: third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/board.cpp.o.requires
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/requires

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/clean:
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src && $(CMAKE_COMMAND) -P CMakeFiles/aruco.dir/cmake_clean.cmake
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/clean

third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/depend:
	cd /home/rujian/fuerte_workspace/drone_demo/build/native-linux && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rujian/fuerte_workspace/drone_demo/native /home/rujian/fuerte_workspace/drone_demo/native/third-party/aruco-1.0.0/src /home/rujian/fuerte_workspace/drone_demo/build/native-linux /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src /home/rujian/fuerte_workspace/drone_demo/build/native-linux/third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third-party/aruco-1.0.0/src/CMakeFiles/aruco.dir/depend

