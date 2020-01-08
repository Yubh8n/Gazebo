// Auto-generated. Do not edit!

// (in-package mavlink_lora.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mavlink_lora_set_position_target_local_ned = require('./mavlink_lora_set_position_target_local_ned.js');

//-----------------------------------------------------------

class mavlink_lora_enable_offboard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
      this.target = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new mavlink_lora_set_position_target_local_ned();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_enable_offboard
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = mavlink_lora_set_position_target_local_ned.serialize(obj.target, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_enable_offboard
    let len;
    let data = new mavlink_lora_enable_offboard(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = mavlink_lora_set_position_target_local_ned.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 98;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_enable_offboard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ac27867a236051af943bfb59e863df3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool enable
    mavlink_lora_set_position_target_local_ned target
    
    ================================================================================
    MSG: mavlink_lora/mavlink_lora_set_position_target_local_ned
    uint32 time_boot_ms
    uint8 target_system
    uint8 target_component
    uint8 coordinate_frame
    uint16 type_mask
    float64 x
    float64 y
    float64 z
    float64 vx
    float64 vy
    float64 vz
    float64 afx
    float64 afy
    float64 afz
    float64 yaw
    float64 yaw_rate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_enable_offboard(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    if (msg.target !== undefined) {
      resolved.target = mavlink_lora_set_position_target_local_ned.Resolve(msg.target)
    }
    else {
      resolved.target = new mavlink_lora_set_position_target_local_ned()
    }

    return resolved;
    }
};

module.exports = mavlink_lora_enable_offboard;
