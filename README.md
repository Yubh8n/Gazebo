git clone git@github.com:Yubh8n/Gazebo.git

cd Gazebo

git submodule init

git submodule update

cd Firmware/



source ~/catkin_ws/devel/setup.bash
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/posix_sitl_default
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo

roslaunch px4 posix_sitl.launch

pip install jinja2 catkin_pkg pyyaml empy toml numpy

