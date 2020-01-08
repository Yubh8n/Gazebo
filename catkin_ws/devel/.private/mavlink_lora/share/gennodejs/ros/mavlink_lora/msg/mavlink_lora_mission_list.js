// Auto-generated. Do not edit!

// (in-package mavlink_lora.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mavlink_lora_mission_item_int = require('./mavlink_lora_mission_item_int.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class mavlink_lora_mission_list {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time_usec = null;
      this.waypoints = null;
      this.append_start_index = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time_usec')) {
        this.time_usec = initObj.time_usec
      }
      else {
        this.time_usec = 0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
      if (initObj.hasOwnProperty('append_start_index')) {
        this.append_start_index = initObj.append_start_index
      }
      else {
        this.append_start_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_mission_list
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time_usec]
    bufferOffset = _serializer.uint64(obj.time_usec, buffer, bufferOffset);
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = mavlink_lora_mission_item_int.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [append_start_index]
    bufferOffset = _serializer.int8(obj.append_start_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_mission_list
    let len;
    let data = new mavlink_lora_mission_list(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_usec]
    data.time_usec = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = mavlink_lora_mission_item_int.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [append_start_index]
    data.append_start_index = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 57 * object.waypoints.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_mission_list';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b03814eda60166a67a626c08cd9b744';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint64 time_usec
    
    mavlink_lora_mission_item_int[] waypoints
    int8 append_start_index
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: mavlink_lora/mavlink_lora_mission_item_int
    float64 param1
    float64 param2
    float64 param3
    float64 param4
    int32 x
    int32 y
    float64 z
    uint16 seq
    uint16 command
    uint8 target_system
    uint8 target_component
    uint8 frame
    uint8 current
    uint8 autocontinue
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_mission_list(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time_usec !== undefined) {
      resolved.time_usec = msg.time_usec;
    }
    else {
      resolved.time_usec = 0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = mavlink_lora_mission_item_int.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    if (msg.append_start_index !== undefined) {
      resolved.append_start_index = msg.append_start_index;
    }
    else {
      resolved.append_start_index = 0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_mission_list;
