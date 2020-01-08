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

class mavlink_lora_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.payload_len = null;
      this.seq = null;
      this.sys_id = null;
      this.comp_id = null;
      this.msg_id = null;
      this.payload = null;
      this.checksum = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('payload_len')) {
        this.payload_len = initObj.payload_len
      }
      else {
        this.payload_len = 0;
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('sys_id')) {
        this.sys_id = initObj.sys_id
      }
      else {
        this.sys_id = 0;
      }
      if (initObj.hasOwnProperty('comp_id')) {
        this.comp_id = initObj.comp_id
      }
      else {
        this.comp_id = 0;
      }
      if (initObj.hasOwnProperty('msg_id')) {
        this.msg_id = initObj.msg_id
      }
      else {
        this.msg_id = 0;
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = [];
      }
      if (initObj.hasOwnProperty('checksum')) {
        this.checksum = initObj.checksum
      }
      else {
        this.checksum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_msg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [payload_len]
    bufferOffset = _serializer.uint8(obj.payload_len, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint8(obj.seq, buffer, bufferOffset);
    // Serialize message field [sys_id]
    bufferOffset = _serializer.uint8(obj.sys_id, buffer, bufferOffset);
    // Serialize message field [comp_id]
    bufferOffset = _serializer.uint8(obj.comp_id, buffer, bufferOffset);
    // Serialize message field [msg_id]
    bufferOffset = _serializer.uint32(obj.msg_id, buffer, bufferOffset);
    // Serialize message field [payload]
    bufferOffset = _arraySerializer.uint8(obj.payload, buffer, bufferOffset, null);
    // Serialize message field [checksum]
    bufferOffset = _serializer.uint16(obj.checksum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_msg
    let len;
    let data = new mavlink_lora_msg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [payload_len]
    data.payload_len = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sys_id]
    data.sys_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [comp_id]
    data.comp_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msg_id]
    data.msg_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [payload]
    data.payload = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [checksum]
    data.checksum = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.payload.length;
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '120cf225394fbebe4f78a7c5431f668a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 payload_len
    uint8 seq
    uint8 sys_id
    uint8 comp_id
    uint32 msg_id
    uint8[] payload
    uint16 checksum
    
    
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
    const resolved = new mavlink_lora_msg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.payload_len !== undefined) {
      resolved.payload_len = msg.payload_len;
    }
    else {
      resolved.payload_len = 0
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.sys_id !== undefined) {
      resolved.sys_id = msg.sys_id;
    }
    else {
      resolved.sys_id = 0
    }

    if (msg.comp_id !== undefined) {
      resolved.comp_id = msg.comp_id;
    }
    else {
      resolved.comp_id = 0
    }

    if (msg.msg_id !== undefined) {
      resolved.msg_id = msg.msg_id;
    }
    else {
      resolved.msg_id = 0
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = []
    }

    if (msg.checksum !== undefined) {
      resolved.checksum = msg.checksum;
    }
    else {
      resolved.checksum = 0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_msg;
