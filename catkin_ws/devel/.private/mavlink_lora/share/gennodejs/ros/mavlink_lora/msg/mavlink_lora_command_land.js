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

class mavlink_lora_command_land {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.abort_alt = null;
      this.precision_land_mode = null;
      this.yaw_angle = null;
      this.lat = null;
      this.lon = null;
      this.altitude = null;
    }
    else {
      if (initObj.hasOwnProperty('abort_alt')) {
        this.abort_alt = initObj.abort_alt
      }
      else {
        this.abort_alt = 0.0;
      }
      if (initObj.hasOwnProperty('precision_land_mode')) {
        this.precision_land_mode = initObj.precision_land_mode
      }
      else {
        this.precision_land_mode = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_angle')) {
        this.yaw_angle = initObj.yaw_angle
      }
      else {
        this.yaw_angle = 0.0;
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
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_command_land
    // Serialize message field [abort_alt]
    bufferOffset = _serializer.float64(obj.abort_alt, buffer, bufferOffset);
    // Serialize message field [precision_land_mode]
    bufferOffset = _serializer.float64(obj.precision_land_mode, buffer, bufferOffset);
    // Serialize message field [yaw_angle]
    bufferOffset = _serializer.float64(obj.yaw_angle, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_command_land
    let len;
    let data = new mavlink_lora_command_land(null);
    // Deserialize message field [abort_alt]
    data.abort_alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [precision_land_mode]
    data.precision_land_mode = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_angle]
    data.yaw_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_command_land';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2d410eebafe4da4e351aa9c74e4140f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 abort_alt
    float64 precision_land_mode
    float64 yaw_angle
    float64 lat
    float64 lon
    float64 altitude
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_command_land(null);
    if (msg.abort_alt !== undefined) {
      resolved.abort_alt = msg.abort_alt;
    }
    else {
      resolved.abort_alt = 0.0
    }

    if (msg.precision_land_mode !== undefined) {
      resolved.precision_land_mode = msg.precision_land_mode;
    }
    else {
      resolved.precision_land_mode = 0.0
    }

    if (msg.yaw_angle !== undefined) {
      resolved.yaw_angle = msg.yaw_angle;
    }
    else {
      resolved.yaw_angle = 0.0
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

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_command_land;
