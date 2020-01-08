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

class mavlink_lora_heartbeat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.autopilot = null;
      this.base_mode = null;
      this.custom_mode = null;
      this.system_status = null;
      this.system_id = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('autopilot')) {
        this.autopilot = initObj.autopilot
      }
      else {
        this.autopilot = 0;
      }
      if (initObj.hasOwnProperty('base_mode')) {
        this.base_mode = initObj.base_mode
      }
      else {
        this.base_mode = 0;
      }
      if (initObj.hasOwnProperty('custom_mode')) {
        this.custom_mode = initObj.custom_mode
      }
      else {
        this.custom_mode = 0;
      }
      if (initObj.hasOwnProperty('system_status')) {
        this.system_status = initObj.system_status
      }
      else {
        this.system_status = 0;
      }
      if (initObj.hasOwnProperty('system_id')) {
        this.system_id = initObj.system_id
      }
      else {
        this.system_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_heartbeat
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [autopilot]
    bufferOffset = _serializer.uint8(obj.autopilot, buffer, bufferOffset);
    // Serialize message field [base_mode]
    bufferOffset = _serializer.uint8(obj.base_mode, buffer, bufferOffset);
    // Serialize message field [custom_mode]
    bufferOffset = _serializer.uint32(obj.custom_mode, buffer, bufferOffset);
    // Serialize message field [system_status]
    bufferOffset = _serializer.uint8(obj.system_status, buffer, bufferOffset);
    // Serialize message field [system_id]
    bufferOffset = _serializer.uint8(obj.system_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_heartbeat
    let len;
    let data = new mavlink_lora_heartbeat(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [autopilot]
    data.autopilot = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [base_mode]
    data.base_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [custom_mode]
    data.custom_mode = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [system_status]
    data.system_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [system_id]
    data.system_id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_heartbeat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb6c018f35a538ffe1179b637866562f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 type
    uint8 autopilot
    uint8 base_mode
    uint32 custom_mode
    uint8 system_status
    uint8 system_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_heartbeat(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.autopilot !== undefined) {
      resolved.autopilot = msg.autopilot;
    }
    else {
      resolved.autopilot = 0
    }

    if (msg.base_mode !== undefined) {
      resolved.base_mode = msg.base_mode;
    }
    else {
      resolved.base_mode = 0
    }

    if (msg.custom_mode !== undefined) {
      resolved.custom_mode = msg.custom_mode;
    }
    else {
      resolved.custom_mode = 0
    }

    if (msg.system_status !== undefined) {
      resolved.system_status = msg.system_status;
    }
    else {
      resolved.system_status = 0
    }

    if (msg.system_id !== undefined) {
      resolved.system_id = msg.system_id;
    }
    else {
      resolved.system_id = 0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_heartbeat;
