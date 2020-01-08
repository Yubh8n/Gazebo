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

class mavlink_lora_command_set_mode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.custom_mode = null;
      this.custom_sub_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0.0;
      }
      if (initObj.hasOwnProperty('custom_mode')) {
        this.custom_mode = initObj.custom_mode
      }
      else {
        this.custom_mode = 0.0;
      }
      if (initObj.hasOwnProperty('custom_sub_mode')) {
        this.custom_sub_mode = initObj.custom_sub_mode
      }
      else {
        this.custom_sub_mode = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_command_set_mode
    // Serialize message field [mode]
    bufferOffset = _serializer.float64(obj.mode, buffer, bufferOffset);
    // Serialize message field [custom_mode]
    bufferOffset = _serializer.float64(obj.custom_mode, buffer, bufferOffset);
    // Serialize message field [custom_sub_mode]
    bufferOffset = _serializer.float64(obj.custom_sub_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_command_set_mode
    let len;
    let data = new mavlink_lora_command_set_mode(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [custom_mode]
    data.custom_mode = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [custom_sub_mode]
    data.custom_sub_mode = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_command_set_mode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da98e2819d970e24304003e95747a815';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 mode
    float64 custom_mode
    float64 custom_sub_mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_command_set_mode(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0.0
    }

    if (msg.custom_mode !== undefined) {
      resolved.custom_mode = msg.custom_mode;
    }
    else {
      resolved.custom_mode = 0.0
    }

    if (msg.custom_sub_mode !== undefined) {
      resolved.custom_sub_mode = msg.custom_sub_mode;
    }
    else {
      resolved.custom_sub_mode = 0.0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_command_set_mode;
