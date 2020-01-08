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

class mavlink_lora_radio_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rssi = null;
      this.remrssi = null;
      this.txbuf = null;
      this.noise = null;
      this.remnoise = null;
      this.rxerrors = null;
      this.fixed = null;
    }
    else {
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
      }
      if (initObj.hasOwnProperty('remrssi')) {
        this.remrssi = initObj.remrssi
      }
      else {
        this.remrssi = 0;
      }
      if (initObj.hasOwnProperty('txbuf')) {
        this.txbuf = initObj.txbuf
      }
      else {
        this.txbuf = 0;
      }
      if (initObj.hasOwnProperty('noise')) {
        this.noise = initObj.noise
      }
      else {
        this.noise = 0;
      }
      if (initObj.hasOwnProperty('remnoise')) {
        this.remnoise = initObj.remnoise
      }
      else {
        this.remnoise = 0;
      }
      if (initObj.hasOwnProperty('rxerrors')) {
        this.rxerrors = initObj.rxerrors
      }
      else {
        this.rxerrors = 0;
      }
      if (initObj.hasOwnProperty('fixed')) {
        this.fixed = initObj.fixed
      }
      else {
        this.fixed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mavlink_lora_radio_status
    // Serialize message field [rssi]
    bufferOffset = _serializer.int8(obj.rssi, buffer, bufferOffset);
    // Serialize message field [remrssi]
    bufferOffset = _serializer.int8(obj.remrssi, buffer, bufferOffset);
    // Serialize message field [txbuf]
    bufferOffset = _serializer.uint8(obj.txbuf, buffer, bufferOffset);
    // Serialize message field [noise]
    bufferOffset = _serializer.uint8(obj.noise, buffer, bufferOffset);
    // Serialize message field [remnoise]
    bufferOffset = _serializer.uint8(obj.remnoise, buffer, bufferOffset);
    // Serialize message field [rxerrors]
    bufferOffset = _serializer.uint16(obj.rxerrors, buffer, bufferOffset);
    // Serialize message field [fixed]
    bufferOffset = _serializer.uint16(obj.fixed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mavlink_lora_radio_status
    let len;
    let data = new mavlink_lora_radio_status(null);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [remrssi]
    data.remrssi = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [txbuf]
    data.txbuf = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [noise]
    data.noise = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [remnoise]
    data.remnoise = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rxerrors]
    data.rxerrors = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [fixed]
    data.fixed = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mavlink_lora/mavlink_lora_radio_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd652cc5b05559e196e4dd9ea309ddb4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 rssi
    int8 remrssi
    uint8 txbuf
    uint8 noise
    uint8 remnoise
    uint16 rxerrors
    uint16 fixed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new mavlink_lora_radio_status(null);
    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
    }

    if (msg.remrssi !== undefined) {
      resolved.remrssi = msg.remrssi;
    }
    else {
      resolved.remrssi = 0
    }

    if (msg.txbuf !== undefined) {
      resolved.txbuf = msg.txbuf;
    }
    else {
      resolved.txbuf = 0
    }

    if (msg.noise !== undefined) {
      resolved.noise = msg.noise;
    }
    else {
      resolved.noise = 0
    }

    if (msg.remnoise !== undefined) {
      resolved.remnoise = msg.remnoise;
    }
    else {
      resolved.remnoise = 0
    }

    if (msg.rxerrors !== undefined) {
      resolved.rxerrors = msg.rxerrors;
    }
    else {
      resolved.rxerrors = 0
    }

    if (msg.fixed !== undefined) {
      resolved.fixed = msg.fixed;
    }
    else {
      resolved.fixed = 0
    }

    return resolved;
    }
};

module.exports = mavlink_lora_radio_status;
