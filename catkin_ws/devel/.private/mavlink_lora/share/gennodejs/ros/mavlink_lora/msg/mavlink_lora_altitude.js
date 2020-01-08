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

class mavlink_lora_altitude {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_usec = null;
      this.altitude_monotonic = null;
      this.altitude_amsl = null;
      this.altitude_local = null;
      this.altitude_relative = null;
      this.altitude_terrain = null;
      this.bottom_clearance = null;
    }
    else {
      if (initObj.hasOwnProperty('time_usec')) {
        this.time_usec = initObj.time_usec
      }
      else {
        this.time_usec = 0;
      }
      if (initObj.hasOwnProperty('altitude_monotonic')) {
        this.altitude_monotonic = initObj.altitude_monotonic
      }
      else {
        this.altitude_monotonic = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_amsl')) {
        this.altitude_amsl = initObj.altitude_amsl
      }
      else {
        this.altitude_amsl = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_local')) {
        this.altitude_local = initObj.altitude_local
      }
      else {
        this.altitude_local = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_relative')) {
        this.altitude_relative = initObj.altitude_relative
      }
      else {
        this.altitude_relative = 0.0;
      }
      if (initObj.hasOwnProperty('altitude_terrain')) {
        this.altitude_terrain = initObj.altitude_terrain
      }
      else {
        this.altitude_terrain = 0.0;
      }
      if (initObj.hasOwnProperty('bottom_clearance')) {
        this.bottom_clearance = initObj.bottom_clearance
      }
      else {
        this.bottom_clearance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_altitude
    // Serialize message field [time_usec]
    bufferOffset = _serializer.uint64(obj.time_usec, buffer, bufferOffset);
    // Serialize message field [altitude_monotonic]
    bufferOffset = _serializer.float64(obj.altitude_monotonic, buffer, bufferOffset);
    // Serialize message field [altitude_amsl]
    bufferOffset = _serializer.float64(obj.altitude_amsl, buffer, bufferOffset);
    // Serialize message field [altitude_local]
    bufferOffset = _serializer.float64(obj.altitude_local, buffer, bufferOffset);
    // Serialize message field [altitude_relative]
    bufferOffset = _serializer.float64(obj.altitude_relative, buffer, bufferOffset);
    // Serialize message field [altitude_terrain]
    bufferOffset = _serializer.float64(obj.altitude_terrain, buffer, bufferOffset);
    // Serialize message field [bottom_clearance]
    bufferOffset = _serializer.float64(obj.bottom_clearance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_altitude
    let len;
    let data = new mavlink_lora_altitude(null);
    // Deserialize message field [time_usec]
    data.time_usec = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [altitude_monotonic]
    data.altitude_monotonic = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude_amsl]
    data.altitude_amsl = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude_local]
    data.altitude_local = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude_relative]
    data.altitude_relative = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude_terrain]
    data.altitude_terrain = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bottom_clearance]
    data.bottom_clearance = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_altitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd974842e562ac493e92f77dd7721717e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint64 time_usec
    float64 altitude_monotonic
    float64 altitude_amsl
    float64 altitude_local
    float64 altitude_relative
    float64 altitude_terrain
    float64 bottom_clearance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_altitude(null);
    if (msg.time_usec !== undefined) {
      resolved.time_usec = msg.time_usec;
    }
    else {
      resolved.time_usec = 0
    }

    if (msg.altitude_monotonic !== undefined) {
      resolved.altitude_monotonic = msg.altitude_monotonic;
    }
    else {
      resolved.altitude_monotonic = 0.0
    }

    if (msg.altitude_amsl !== undefined) {
      resolved.altitude_amsl = msg.altitude_amsl;
    }
    else {
      resolved.altitude_amsl = 0.0
    }

    if (msg.altitude_local !== undefined) {
      resolved.altitude_local = msg.altitude_local;
    }
    else {
      resolved.altitude_local = 0.0
    }

    if (msg.altitude_relative !== undefined) {
      resolved.altitude_relative = msg.altitude_relative;
    }
    else {
      resolved.altitude_relative = 0.0
    }

    if (msg.altitude_terrain !== undefined) {
      resolved.altitude_terrain = msg.altitude_terrain;
    }
    else {
      resolved.altitude_terrain = 0.0
    }

    if (msg.bottom_clearance !== undefined) {
      resolved.bottom_clearance = msg.bottom_clearance;
    }
    else {
      resolved.bottom_clearance = 0.0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_altitude;
