// Auto-generated. Do not edit!

// (in-package mavlink_lora.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class mavlink_lora_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.last_heard = null;
      this.last_heard_sys_status = null;
      this.batt_volt = null;
      this.cpu_load = null;
      this.batt_remaining = null;
      this.msg_sent_gcs = null;
      this.msg_received_gcs = null;
      this.msg_dropped_gcs = null;
      this.msg_dropped_uas = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('last_heard')) {
        this.last_heard = initObj.last_heard
      }
      else {
        this.last_heard = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('last_heard_sys_status')) {
        this.last_heard_sys_status = initObj.last_heard_sys_status
      }
      else {
        this.last_heard_sys_status = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('batt_volt')) {
        this.batt_volt = initObj.batt_volt
      }
      else {
        this.batt_volt = 0;
      }
      if (initObj.hasOwnProperty('cpu_load')) {
        this.cpu_load = initObj.cpu_load
      }
      else {
        this.cpu_load = 0;
      }
      if (initObj.hasOwnProperty('batt_remaining')) {
        this.batt_remaining = initObj.batt_remaining
      }
      else {
        this.batt_remaining = 0;
      }
      if (initObj.hasOwnProperty('msg_sent_gcs')) {
        this.msg_sent_gcs = initObj.msg_sent_gcs
      }
      else {
        this.msg_sent_gcs = 0;
      }
      if (initObj.hasOwnProperty('msg_received_gcs')) {
        this.msg_received_gcs = initObj.msg_received_gcs
      }
      else {
        this.msg_received_gcs = 0;
      }
      if (initObj.hasOwnProperty('msg_dropped_gcs')) {
        this.msg_dropped_gcs = initObj.msg_dropped_gcs
      }
      else {
        this.msg_dropped_gcs = 0;
      }
      if (initObj.hasOwnProperty('msg_dropped_uas')) {
        this.msg_dropped_uas = initObj.msg_dropped_uas
      }
      else {
        this.msg_dropped_uas = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [last_heard]
    bufferOffset = _serializer.time(obj.last_heard, buffer, bufferOffset);
    // Serialize message field [last_heard_sys_status]
    bufferOffset = _serializer.time(obj.last_heard_sys_status, buffer, bufferOffset);
    // Serialize message field [batt_volt]
    bufferOffset = _serializer.uint16(obj.batt_volt, buffer, bufferOffset);
    // Serialize message field [cpu_load]
    bufferOffset = _serializer.uint16(obj.cpu_load, buffer, bufferOffset);
    // Serialize message field [batt_remaining]
    bufferOffset = _serializer.int8(obj.batt_remaining, buffer, bufferOffset);
    // Serialize message field [msg_sent_gcs]
    bufferOffset = _serializer.uint32(obj.msg_sent_gcs, buffer, bufferOffset);
    // Serialize message field [msg_received_gcs]
    bufferOffset = _serializer.uint32(obj.msg_received_gcs, buffer, bufferOffset);
    // Serialize message field [msg_dropped_gcs]
    bufferOffset = _serializer.uint32(obj.msg_dropped_gcs, buffer, bufferOffset);
    // Serialize message field [msg_dropped_uas]
    bufferOffset = _serializer.uint32(obj.msg_dropped_uas, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_status
    let len;
    let data = new mavlink_lora_status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_heard]
    data.last_heard = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [last_heard_sys_status]
    data.last_heard_sys_status = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [batt_volt]
    data.batt_volt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [cpu_load]
    data.cpu_load = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [batt_remaining]
    data.batt_remaining = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [msg_sent_gcs]
    data.msg_sent_gcs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [msg_received_gcs]
    data.msg_received_gcs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [msg_dropped_gcs]
    data.msg_dropped_gcs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [msg_dropped_uas]
    data.msg_dropped_uas = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06982f39fc78bcc6472ae00b3aa4d346';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    time last_heard
    time last_heard_sys_status
    uint16 batt_volt
    uint16 cpu_load
    int8 batt_remaining
    
    uint32 msg_sent_gcs
    uint32 msg_received_gcs
    uint32 msg_dropped_gcs
    uint32 msg_dropped_uas
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.last_heard !== undefined) {
      resolved.last_heard = msg.last_heard;
    }
    else {
      resolved.last_heard = {secs: 0, nsecs: 0}
    }

    if (msg.last_heard_sys_status !== undefined) {
      resolved.last_heard_sys_status = msg.last_heard_sys_status;
    }
    else {
      resolved.last_heard_sys_status = {secs: 0, nsecs: 0}
    }

    if (msg.batt_volt !== undefined) {
      resolved.batt_volt = msg.batt_volt;
    }
    else {
      resolved.batt_volt = 0
    }

    if (msg.cpu_load !== undefined) {
      resolved.cpu_load = msg.cpu_load;
    }
    else {
      resolved.cpu_load = 0
    }

    if (msg.batt_remaining !== undefined) {
      resolved.batt_remaining = msg.batt_remaining;
    }
    else {
      resolved.batt_remaining = 0
    }

    if (msg.msg_sent_gcs !== undefined) {
      resolved.msg_sent_gcs = msg.msg_sent_gcs;
    }
    else {
      resolved.msg_sent_gcs = 0
    }

    if (msg.msg_received_gcs !== undefined) {
      resolved.msg_received_gcs = msg.msg_received_gcs;
    }
    else {
      resolved.msg_received_gcs = 0
    }

    if (msg.msg_dropped_gcs !== undefined) {
      resolved.msg_dropped_gcs = msg.msg_dropped_gcs;
    }
    else {
      resolved.msg_dropped_gcs = 0
    }

    if (msg.msg_dropped_uas !== undefined) {
      resolved.msg_dropped_uas = msg.msg_dropped_uas;
    }
    else {
      resolved.msg_dropped_uas = 0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_status;
