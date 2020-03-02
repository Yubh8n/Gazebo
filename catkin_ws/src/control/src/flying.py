import rospy
from mavlink_lora.msg import    mavlink_lora_pos, \
                                mavlink_lora_command_ack,\
                                mavlink_lora_set_position_target_local_ned, \
                                mavlink_lora_command_reposition
from std_msgs.msg import Bool


class altitude_control:
    def __init__(self):
        # Setup
        rospy.init_node('UAV_Controller')

        # Variables
        self.altitude = 0
        self.ack = False

        # ROS Variables
        self.rate = rospy.Rate(20)

        # ROS Publishers
        self.LOCAL_NED = rospy.Publisher('/mavlink_interface/command/set_target_position_local_ned', mavlink_lora_set_position_target_local_ned, queue_size=10)
        self.arm        = rospy.Publisher('/mavlink_interface/command/arm_disarm', Bool, queue_size=0)
        self.repo       = rospy.Publisher('/mavlink_interface/command/reposition', mavlink_lora_command_reposition, queue_size=0)

        # ROS Subscribers
        rospy.Subscriber('/mavlink_pos', mavlink_lora_pos, self.pos_callback)
        rospy.Subscriber('/mavlink_interface/command/ack', mavlink_lora_command_ack, self.ack_callback)
        rospy.sleep(1)

    def pos_callback(self, msg):
        # print(msg)
        pass

    def ack_callback(self, msg):
        self.ack = True
        print(msg)

    # TODO
    def new_position(self):
        arm = Bool()
        arm.data = True
        self.arm.publish(arm)
        rospy.sleep(3)
        '''
        repo = mavlink_lora_set_position_target_local_ned()
        repo.target_system =    0
        repo.target_component = 0
        repo.z = 5
        repo.y = 0
        repo.x = 0
        self.LOCAL_NED.publish(repo)
        '''
        repo = mavlink_lora_command_reposition()
        repo.alt = 5
        repo.lat = 55
        repo.lon = 10
        self.repo.publish(repo)

        while not self.ack:
            self.rate.sleep()
        print("ACK Received")

    def run(self):
        rospy.sleep(5)
        self.new_position()
        rospy.spin()


def main():
    uav_class = altitude_control()
    uav_class.run()


main()
