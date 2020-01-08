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

class mavlink_lora_command_reposition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ground_speed = null;
      this.yaw_heading = null;
      this.lat = null;
      this.lon = null;
      this.alt = null;
    }
    else {
      if (initObj.hasOwnProperty('ground_speed')) {
        this.ground_speed = initObj.ground_speed
      }
      else {
        this.ground_speed = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_heading')) {
        this.yaw_heading = initObj.yaw_heading
      }
      else {
        this.yaw_heading = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_command_reposition
    // Serialize message field [ground_speed]
    bufferOffset = _serializer.float64(obj.ground_speed, buffer, bufferOffset);
    // Serialize message field [yaw_heading]
    bufferOffset = _serializer.float64(obj.yaw_heading, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_command_reposition
    let len;
    let data = new mavlink_lora_command_reposition(null);
    // Deserialize message field [ground_speed]
    data.ground_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_heading]
    data.yaw_heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_command_reposition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79563d72b78866c926c96f14f749ab8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ground_speed
    float64 yaw_heading
    float64 lat
    float64 lon
    float64 alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_command_reposition(null);
    if (msg.ground_speed !== undefined) {
      resolved.ground_speed = msg.ground_speed;
    }
    else {
      resolved.ground_speed = 0.0
    }

    if (msg.yaw_heading !== undefined) {
      resolved.yaw_heading = msg.yaw_heading;
    }
    else {
      resolved.yaw_heading = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_command_reposition;
