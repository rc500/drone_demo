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
CMAKE_SOURCE_DIR = /home/rujian/fuerte_workspace/drone_demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rujian/fuerte_workspace/drone_demo

# Utility rule file for ROSBUILD_gensrv_cpp.

# Include the progress variables for this target.
include CMakeFiles/ROSBUILD_gensrv_cpp.dir/progress.make

CMakeFiles/ROSBUILD_gensrv_cpp: srv_gen/cpp/include/drone_demo/CamSelect.h
CMakeFiles/ROSBUILD_gensrv_cpp: srv_gen/cpp/include/drone_demo/HullSelect.h
CMakeFiles/ROSBUILD_gensrv_cpp: srv_gen/cpp/include/drone_demo/LedAnim.h

srv_gen/cpp/include/drone_demo/CamSelect.h: srv/CamSelect.srv
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/roslib/bin/gendeps
srv_gen/cpp/include/drone_demo/CamSelect.h: manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/stacks/vision_opencv/opencv2/manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/roslang/manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/roscpp/manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/stacks/vision_opencv/cv_bridge/manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/rospy/manifest.xml
srv_gen/cpp/include/drone_demo/CamSelect.h: /opt/ros/fuerte/share/std_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating srv_gen/cpp/include/drone_demo/CamSelect.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/rujian/fuerte_workspace/drone_demo/srv/CamSelect.srv

srv_gen/cpp/include/drone_demo/HullSelect.h: srv/HullSelect.srv
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/roslib/bin/gendeps
srv_gen/cpp/include/drone_demo/HullSelect.h: manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/stacks/vision_opencv/opencv2/manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/roslang/manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/roscpp/manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/stacks/vision_opencv/cv_bridge/manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/rospy/manifest.xml
srv_gen/cpp/include/drone_demo/HullSelect.h: /opt/ros/fuerte/share/std_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating srv_gen/cpp/include/drone_demo/HullSelect.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/rujian/fuerte_workspace/drone_demo/srv/HullSelect.srv

srv_gen/cpp/include/drone_demo/LedAnim.h: srv/LedAnim.srv
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/roscpp/rosbuild/scripts/genmsg_cpp.py
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/roslib/bin/gendeps
srv_gen/cpp/include/drone_demo/LedAnim.h: manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/geometry_msgs/manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/sensor_msgs/manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/stacks/vision_opencv/opencv2/manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/roslang/manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/roscpp/manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/stacks/vision_opencv/cv_bridge/manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/rospy/manifest.xml
srv_gen/cpp/include/drone_demo/LedAnim.h: /opt/ros/fuerte/share/std_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/rujian/fuerte_workspace/drone_demo/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating srv_gen/cpp/include/drone_demo/LedAnim.h"
	/opt/ros/fuerte/share/roscpp/rosbuild/scripts/gensrv_cpp.py /home/rujian/fuerte_workspace/drone_demo/srv/LedAnim.srv

ROSBUILD_gensrv_cpp: CMakeFiles/ROSBUILD_gensrv_cpp
ROSBUILD_gensrv_cpp: srv_gen/cpp/include/drone_demo/CamSelect.h
ROSBUILD_gensrv_cpp: srv_gen/cpp/include/drone_demo/HullSelect.h
ROSBUILD_gensrv_cpp: srv_gen/cpp/include/drone_demo/LedAnim.h
ROSBUILD_gensrv_cpp: CMakeFiles/ROSBUILD_gensrv_cpp.dir/build.make
.PHONY : ROSBUILD_gensrv_cpp

# Rule to build all files generated by this target.
CMakeFiles/ROSBUILD_gensrv_cpp.dir/build: ROSBUILD_gensrv_cpp
.PHONY : CMakeFiles/ROSBUILD_gensrv_cpp.dir/build

CMakeFiles/ROSBUILD_gensrv_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ROSBUILD_gensrv_cpp.dir/clean

CMakeFiles/ROSBUILD_gensrv_cpp.dir/depend:
	cd /home/rujian/fuerte_workspace/drone_demo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rujian/fuerte_workspace/drone_demo /home/rujian/fuerte_workspace/drone_demo /home/rujian/fuerte_workspace/drone_demo /home/rujian/fuerte_workspace/drone_demo /home/rujian/fuerte_workspace/drone_demo/CMakeFiles/ROSBUILD_gensrv_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ROSBUILD_gensrv_cpp.dir/depend

