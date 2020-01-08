This Mavlink LoRa ROS node has been tested under ROS Kinetic and ROS Melodic


The following lines should be in the void parse_msg_from_fc function in mavlink_lora_node.cpp after the checksum


    //Publish raw message on mavlink_rx
    mavlink_lora::mavlink_lora_msg raw_msg;
    raw_msg.header.stamp = last_heard;
    raw_msg.seq = m.seq;
    raw_msg.sys_id = m.sys_id;
    raw_msg.comp_id = m.comp_id;
    raw_msg.msg_id = m.msg_id;
    raw_msg.payload = m.payload;
    raw_msg.payload_len = m.payload_len;
    msg_pub.publish(raw_msg);
    
    
     in mavlink_lora_lib.hpp under private variables, these should be set to 0 instead of just initialized.
     
    short txbuf_cnt = 0;
    short rxbuf_cnt = 0;
    char tx_seq;
    short msg_begin = -1;
