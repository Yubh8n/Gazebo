Installation guide:

```
git clone https://github.com/Yubh8n/Gazebo.git
```

```
pip install jinja2 catkin_pkg pyyaml empy toml numpy
```
```
cd Gazebo/
```

```
git submodule init
git submodule update
```
```
cd Firmware/
```

After you make first time, gazebo will start up, just ctrl+c the command window to close this down, and keep on with the installation.
```
make px4_sitl_default gazebo
```
```
source Tools/setup_gazebo.bash $(pwd) $(pwd)/build/posix_sitl_default
```
```
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)
```
```
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$(pwd)/Tools/sitl_gazebo
```
```
roslaunch px4 posix_sitl.launch
```


If any issues appears, please contact me on Chmik13@student.sdu.dk with your error.

Or write a issue post under issues.
