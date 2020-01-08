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

class mavlink_lora_set_position_target_local_ned {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_boot_ms = null;
      this.target_system = null;
      this.target_component = null;
      this.coordinate_frame = null;
      this.type_mask = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.afx = null;
      this.afy = null;
      this.afz = null;
      this.yaw = null;
      this.yaw_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('time_boot_ms')) {
        this.time_boot_ms = initObj.time_boot_ms
      }
      else {
        this.time_boot_ms = 0;
      }
      if (initObj.hasOwnProperty('target_system')) {
        this.target_system = initObj.target_system
      }
      else {
        this.target_system = 0;
      }
      if (initObj.hasOwnProperty('target_component')) {
        this.target_component = initObj.target_component
      }
      else {
        this.target_component = 0;
      }
      if (initObj.hasOwnProperty('coordinate_frame')) {
        this.coordinate_frame = initObj.coordinate_frame
      }
      else {
        this.coordinate_frame = 0;
      }
      if (initObj.hasOwnProperty('type_mask')) {
        this.type_mask = initObj.type_mask
      }
      else {
        this.type_mask = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0.0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0.0;
      }
      if (initObj.hasOwnProperty('afx')) {
        this.afx = initObj.afx
      }
      else {
        this.afx = 0.0;
      }
      if (initObj.hasOwnProperty('afy')) {
        this.afy = initObj.afy
      }
      else {
        this.afy = 0.0;
      }
      if (initObj.hasOwnProperty('afz')) {
        this.afz = initObj.afz
      }
      else {
        this.afz = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_set_position_target_local_ned
    // Serialize message field [time_boot_ms]
    bufferOffset = _serializer.uint32(obj.time_boot_ms, buffer, bufferOffset);
    // Serialize message field [target_system]
    bufferOffset = _serializer.uint8(obj.target_system, buffer, bufferOffset);
    // Serialize message field [target_component]
    bufferOffset = _serializer.uint8(obj.target_component, buffer, bufferOffset);
    // Serialize message field [coordinate_frame]
    bufferOffset = _serializer.uint8(obj.coordinate_frame, buffer, bufferOffset);
    // Serialize message field [type_mask]
    bufferOffset = _serializer.uint16(obj.type_mask, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.float64(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.float64(obj.vz, buffer, bufferOffset);
    // Serialize message field [afx]
    bufferOffset = _serializer.float64(obj.afx, buffer, bufferOffset);
    // Serialize message field [afy]
    bufferOffset = _serializer.float64(obj.afy, buffer, bufferOffset);
    // Serialize message field [afz]
    bufferOffset = _serializer.float64(obj.afz, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_set_position_target_local_ned
    let len;
    let data = new mavlink_lora_set_position_target_local_ned(null);
    // Deserialize message field [time_boot_ms]
    data.time_boot_ms = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [target_system]
    data.target_system = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_component]
    data.target_component = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [coordinate_frame]
    data.coordinate_frame = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [type_mask]
    data.type_mask = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [afx]
    data.afx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [afy]
    data.afy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [afz]
    data.afz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 97;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_set_position_target_local_ned';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90cd8aa6df876fb01860f809ed461d08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 time_boot_ms
    uint8 target_system
    uint8 target_component
    uint8 coordinate_frame
    uint16 type_mask
    float64 x
    float64 y
    float64 z
    float64 vx
    float64 vy
    float64 vz
    float64 afx
    float64 afy
    float64 afz
    float64 yaw
    float64 yaw_rate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_set_position_target_local_ned(null);
    if (msg.time_boot_ms !== undefined) {
      resolved.time_boot_ms = msg.time_boot_ms;
    }
    else {
      resolved.time_boot_ms = 0
    }

    if (msg.target_system !== undefined) {
      resolved.target_system = msg.target_system;
    }
    else {
      resolved.target_system = 0
    }

    if (msg.target_component !== undefined) {
      resolved.target_component = msg.target_component;
    }
    else {
      resolved.target_component = 0
    }

    if (msg.coordinate_frame !== undefined) {
      resolved.coordinate_frame = msg.coordinate_frame;
    }
    else {
      resolved.coordinate_frame = 0
    }

    if (msg.type_mask !== undefined) {
      resolved.type_mask = msg.type_mask;
    }
    else {
      resolved.type_mask = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0.0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0.0
    }

    if (msg.afx !== undefined) {
      resolved.afx = msg.afx;
    }
    else {
      resolved.afx = 0.0
    }

    if (msg.afy !== undefined) {
      resolved.afy = msg.afy;
    }
    else {
      resolved.afy = 0.0
    }

    if (msg.afz !== undefined) {
      resolved.afz = msg.afz;
    }
    else {
      resolved.afz = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_set_position_target_local_ned;
