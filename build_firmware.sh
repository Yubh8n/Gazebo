# /!bin/bash
cp Specials/{marker.world,mark.world} Firmware/Tools/sitl_gazebo/worlds/
cp -r Specials/{aruco_marker,calibration_chessboard} Firmware/Tools/sitl_gazebo/models/
cp Specials/posix_sitl_cust.launch Firmware/launch/posix_sitl_cust.launch
mv Firmware/Tools/sitl_gazebo/models/rotors_description/urdf/iris_base.xacro Firmware/Tools/sitl_gazebo/models/rotors_description/urdf/iris_base_copy.xacro
cp Specials/iris_base.xacro Firmware/Tools/sitl_gazebo/models/rotors_description/urdf/
cd Firmware/
make clean &&
make px4_sitl gazebo
