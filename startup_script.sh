#! /bin/bash

export PX4_HOME_LAT=55.47228089795564
export PX4_HOME_LON=10.32437208048389
export PX4_HOME_ALT=0.0

cd Firmware/

source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo

roslaunch px4 posix_sitl.launch 
