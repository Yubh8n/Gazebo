#! /bin/bash
# Worlds
cp -rf Specials/{marker.world,infront_spawn.world,cal.world} Firmware/Tools/sitl_gazebo/worlds/

# Boards.
cp -rf  Specials/{aruco_marker,calibration_chessboard} Firmware/Tools/sitl_gazebo/models/

# Launch files
cp -rf Specials/{posix_sitl_cust.launch,marker_test.launch,posix_sitl_calibration.launch} Firmware/launch/

# Iris files
mv Firmware/Tools/sitl_gazebo/models/rotors_description/urdf/iris_base.xacro Firmware/Tools/sitl_gazebo/models/rotors_description/urdf/iris_base_copy.xacro
cp -rf Specials/iris_base.xacro Firmware/Tools/sitl_gazebo/models/rotors_description/urdf/

# Firmware build.
cd Firmware/ || return
make clean &&
make px4_sitl gazebo
