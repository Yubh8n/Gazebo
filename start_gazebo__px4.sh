#! /bin/bash
cd Firmware/

source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/px4_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo

socat -d -d pty,raw,echo=0,link=/tmp/ttyV5 pty,raw,echo=0,link=/tmp/ttyV6 &
socat -d udp4-listen:14540 open:/tmp/ttyV5,raw,nonblock,waitlock=/tmp/s0.locak,echo=0,b921600,crnl &

roslaunch px4 posix_sitl.launch 
