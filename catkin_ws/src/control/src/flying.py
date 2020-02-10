import rospy
import os
from mavlink_lora.msg import mavlink_lora_pos


class altitude_control:
    def __init__(self):
        #Variables
        self.altitude = 0

        #ROS Varibles
        rospy.init_node('UAV_Controller')
        rate = rospy.Rate(20)
        #ROS Publishers

        #ROS Subscribers
        rospy.Subscriber('/mavlink_pos', mavlink_lora_pos, self.pos_callback)

    def pos_callback(self, msg):
        print(msg)

    def run(self):
        rospy.spin()


def main():
    uav_class = altitude_control()
    uav_class.run()

main()