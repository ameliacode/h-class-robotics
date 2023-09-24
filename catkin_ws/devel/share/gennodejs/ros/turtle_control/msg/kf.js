// Auto-generated. Do not edit!

// (in-package turtle_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class kf {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_kf = null;
      this.x_odom = null;
      this.x_sensor = null;
      this.x_sensor_var = null;
    }
    else {
      if (initObj.hasOwnProperty('x_kf')) {
        this.x_kf = initObj.x_kf
      }
      else {
        this.x_kf = 0.0;
      }
      if (initObj.hasOwnProperty('x_odom')) {
        this.x_odom = initObj.x_odom
      }
      else {
        this.x_odom = 0.0;
      }
      if (initObj.hasOwnProperty('x_sensor')) {
        this.x_sensor = initObj.x_sensor
      }
      else {
        this.x_sensor = 0.0;
      }
      if (initObj.hasOwnProperty('x_sensor_var')) {
        this.x_sensor_var = initObj.x_sensor_var
      }
      else {
        this.x_sensor_var = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type kf
    // Serialize message field [x_kf]
    bufferOffset = _serializer.float32(obj.x_kf, buffer, bufferOffset);
    // Serialize message field [x_odom]
    bufferOffset = _serializer.float32(obj.x_odom, buffer, bufferOffset);
    // Serialize message field [x_sensor]
    bufferOffset = _serializer.float32(obj.x_sensor, buffer, bufferOffset);
    // Serialize message field [x_sensor_var]
    bufferOffset = _serializer.float32(obj.x_sensor_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type kf
    let len;
    let data = new kf(null);
    // Deserialize message field [x_kf]
    data.x_kf = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_odom]
    data.x_odom = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_sensor]
    data.x_sensor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_sensor_var]
    data.x_sensor_var = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtle_control/kf';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d726d72060def9671484e9bd7b7c259';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x_kf
    float32 x_odom
    float32 x_sensor
    float32 x_sensor_var
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new kf(null);
    if (msg.x_kf !== undefined) {
      resolved.x_kf = msg.x_kf;
    }
    else {
      resolved.x_kf = 0.0
    }

    if (msg.x_odom !== undefined) {
      resolved.x_odom = msg.x_odom;
    }
    else {
      resolved.x_odom = 0.0
    }

    if (msg.x_sensor !== undefined) {
      resolved.x_sensor = msg.x_sensor;
    }
    else {
      resolved.x_sensor = 0.0
    }

    if (msg.x_sensor_var !== undefined) {
      resolved.x_sensor_var = msg.x_sensor_var;
    }
    else {
      resolved.x_sensor_var = 0.0
    }

    return resolved;
    }
};

module.exports = kf;
