#!/bin/bash

#Building and starting mavlink lora.
cd catkin_ws/

catkin build

source devel/setup.bash

roslaunch mavlink_lora mavlink_lora_sim.launch

