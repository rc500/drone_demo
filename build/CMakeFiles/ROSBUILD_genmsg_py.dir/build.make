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
CMAKE_SOURCE_DIR = /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/build

# Utility rule file for ROSBUILD_genmsg_py.

# Include the progress variables for this target.
include CMakeFiles/ROSBUILD_genmsg_py.dir/progress.make

CMakeFiles/ROSBUILD_genmsg_py: ../src/drone_demo/msg/__init__.py

../src/drone_demo/msg/__init__.py: ../src/drone_demo/msg/_Navdata.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/drone_demo/msg/__init__.py"
	/opt/ros/fuerte/share/rospy/rosbuild/scripts/genmsg_py.py --initpy /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/msg/Navdata.msg

../src/drone_demo/msg/_Navdata.py: ../msg/Navdata.msg
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/rospy/rosbuild/scripts/genmsg_py.py
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/roslib/bin/gendeps
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/std_msgs/msg/Header.msg
../src/drone_demo/msg/_Navdata.py: ../manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/stacks/vision_opencv/opencv2/manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/roslang/manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/roscpp/manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/stacks/vision_opencv/cv_bridge/manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/rospy/manifest.xml
../src/drone_demo/msg/_Navdata.py: /opt/ros/fuerte/share/std_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/drone_demo/msg/_Navdata.py"
	/opt/ros/fuerte/share/rospy/rosbuild/scripts/genmsg_py.py --noinitpy /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/msg/Navdata.msg

ROSBUILD_genmsg_py: CMakeFiles/ROSBUILD_genmsg_py
ROSBUILD_genmsg_py: ../src/drone_demo/msg/__init__.py
ROSBUILD_genmsg_py: ../src/drone_demo/msg/_Navdata.py
ROSBUILD_genmsg_py: CMakeFiles/ROSBUILD_genmsg_py.dir/build.make
.PHONY : ROSBUILD_genmsg_py

# Rule to build all files generated by this target.
CMakeFiles/ROSBUILD_genmsg_py.dir/build: ROSBUILD_genmsg_py
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/build

CMakeFiles/ROSBUILD_genmsg_py.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/clean

CMakeFiles/ROSBUILD_genmsg_py.dir/depend:
	cd /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/build /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/build /home/rujian/fuerte_workspace/brown-ros-pkg-read-only/experimental/drone_demo/build/CMakeFiles/ROSBUILD_genmsg_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/depend

