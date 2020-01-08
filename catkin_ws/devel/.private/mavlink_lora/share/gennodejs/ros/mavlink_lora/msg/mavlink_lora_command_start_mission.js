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

class mavlink_lora_command_start_mission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_item = null;
      this.last_item = null;
    }
    else {
      if (initObj.hasOwnProperty('first_item')) {
        this.first_item = initObj.first_item
      }
      else {
        this.first_item = 0.0;
      }
      if (initObj.hasOwnProperty('last_item')) {
        this.last_item = initObj.last_item
      }
      else {
        this.last_item = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_command_start_mission
    // Serialize message field [first_item]
    bufferOffset = _serializer.float64(obj.first_item, buffer, bufferOffset);
    // Serialize message field [last_item]
    bufferOffset = _serializer.float64(obj.last_item, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_command_start_mission
    let len;
    let data = new mavlink_lora_command_start_mission(null);
    // Deserialize message field [first_item]
    data.first_item = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [last_item]
    data.last_item = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_command_start_mission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6332a118f38eb9719c1f7f9fd9ec24c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 first_item
    float64 last_item
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_command_start_mission(null);
    if (msg.first_item !== undefined) {
      resolved.first_item = msg.first_item;
    }
    else {
      resolved.first_item = 0.0
    }

    if (msg.last_item !== undefined) {
      resolved.last_item = msg.last_item;
    }
    else {
      resolved.last_item = 0.0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_command_start_mission;
