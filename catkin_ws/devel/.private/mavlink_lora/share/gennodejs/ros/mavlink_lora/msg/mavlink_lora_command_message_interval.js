// Auto-generated. Do not edit!

// (in-package mavlink_lora.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class mavlink_lora_command_message_interval {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message_id = null;
      this.interval = null;
    }
    else {
      if (initObj.hasOwnProperty('message_id')) {
        this.message_id = initObj.message_id
      }
      else {
        this.message_id = 0.0;
      }
      if (initObj.hasOwnProperty('interval')) {
        this.interval = initObj.interval
      }
      else {
        this.interval = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_command_message_interval
    // Serialize message field [message_id]
    bufferOffset = _serializer.float64(obj.message_id, buffer, bufferOffset);
    // Serialize message field [interval]
    bufferOffset = _serializer.float64(obj.interval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_command_message_interval
    let len;
    let data = new mavlink_lora_command_message_interval(null);
    // Deserialize message field [message_id]
    data.message_id = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [interval]
    data.interval = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_command_message_interval';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55c9f15bed1a05ddbb00a99661cd4646';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 message_id
    float64 interval
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_command_message_interval(null);
    if (msg.message_id !== undefined) {
      resolved.message_id = msg.message_id;
    }
    else {
      resolved.message_id = 0.0
    }

    if (msg.interval !== undefined) {
      resolved.interval = msg.interval;
    }
    else {
      resolved.interval = 0.0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_command_message_interval;
