// Auto-generated. Do not edit!

// (in-package demo1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class addintsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.n1 = null;
      this.n2 = null;
    }
    else {
      if (initObj.hasOwnProperty('n1')) {
        this.n1 = initObj.n1
      }
      else {
        this.n1 = 0;
      }
      if (initObj.hasOwnProperty('n2')) {
        this.n2 = initObj.n2
      }
      else {
        this.n2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type addintsRequest
    // Serialize message field [n1]
    bufferOffset = _serializer.int32(obj.n1, buffer, bufferOffset);
    // Serialize message field [n2]
    bufferOffset = _serializer.int32(obj.n2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type addintsRequest
    let len;
    let data = new addintsRequest(null);
    // Deserialize message field [n1]
    data.n1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [n2]
    data.n2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'demo1/addintsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24a2eb07eebfdef8a72516605c769411';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 n1
    int32 n2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new addintsRequest(null);
    if (msg.n1 !== undefined) {
      resolved.n1 = msg.n1;
    }
    else {
      resolved.n1 = 0
    }

    if (msg.n2 !== undefined) {
      resolved.n2 = msg.n2;
    }
    else {
      resolved.n2 = 0
    }

    return resolved;
    }
};

class addintsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sum = null;
    }
    else {
      if (initObj.hasOwnProperty('sum')) {
        this.sum = initObj.sum
      }
      else {
        this.sum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type addintsResponse
    // Serialize message field [sum]
    bufferOffset = _serializer.int32(obj.sum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type addintsResponse
    let len;
    let data = new addintsResponse(null);
    // Deserialize message field [sum]
    data.sum = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'demo1/addintsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0ba699c25c9418c0366f3595c0c8e8ec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 sum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new addintsResponse(null);
    if (msg.sum !== undefined) {
      resolved.sum = msg.sum;
    }
    else {
      resolved.sum = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: addintsRequest,
  Response: addintsResponse,
  md5sum() { return 'aa5e88d5a46242f3c25d5b10a656c0d2'; },
  datatype() { return 'demo1/addints'; }
};
