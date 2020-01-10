Installation guide:

git clone git@github.com:Yubh8n/Gazebo.git

pip install jinja2 catkin_pkg pyyaml empy toml numpy

git submodule init

git submodule update

cd Firmware/

make px4_sitl_default gazebo
'''
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/posix_sitl_default
'''
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo

roslaunch px4 posix_sitl.launch



If any issues appears, please contact me on Chmik13@student.sdu.dk with your error.

Or write a issue post under issues.
