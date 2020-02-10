import rospy
import os
from mavlink_lora.msg import mavlink_lora_pos

class altitude_control:
    def __init__(self):
        #Variables
        self.altitude = 0

        #ROS Varibles
        
        #ROS Publishers

        #ROS Subscribers
        rospy.Subscriber('/mavlink_pos', mavlink_lora_pos, self.pos_callback)

    def pos_callback(self, msg):
        print(msg)

