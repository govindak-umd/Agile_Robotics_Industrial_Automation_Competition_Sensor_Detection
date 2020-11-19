// Auto-generated. Do not edit!

// (in-package nist_gear.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SubmitTrayRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tray_id = null;
      this.kit_type = null;
    }
    else {
      if (initObj.hasOwnProperty('tray_id')) {
        this.tray_id = initObj.tray_id
      }
      else {
        this.tray_id = '';
      }
      if (initObj.hasOwnProperty('kit_type')) {
        this.kit_type = initObj.kit_type
      }
      else {
        this.kit_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmitTrayRequest
    // Serialize message field [tray_id]
    bufferOffset = _serializer.string(obj.tray_id, buffer, bufferOffset);
    // Serialize message field [kit_type]
    bufferOffset = _serializer.string(obj.kit_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmitTrayRequest
    let len;
    let data = new SubmitTrayRequest(null);
    // Deserialize message field [tray_id]
    data.tray_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kit_type]
    data.kit_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tray_id.length;
    length += object.kit_type.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/SubmitTrayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9addfb311429c0c9afeb86c002d464f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tray_id
    string kit_type
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmitTrayRequest(null);
    if (msg.tray_id !== undefined) {
      resolved.tray_id = msg.tray_id;
    }
    else {
      resolved.tray_id = ''
    }

    if (msg.kit_type !== undefined) {
      resolved.kit_type = msg.kit_type;
    }
    else {
      resolved.kit_type = ''
    }

    return resolved;
    }
};

class SubmitTrayResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.inspection_result = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('inspection_result')) {
        this.inspection_result = initObj.inspection_result
      }
      else {
        this.inspection_result = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmitTrayResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [inspection_result]
    bufferOffset = _serializer.float32(obj.inspection_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmitTrayResponse
    let len;
    let data = new SubmitTrayResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [inspection_result]
    data.inspection_result = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/SubmitTrayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a81550f277a1c03d6d98406331d270c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float32 inspection_result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmitTrayResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.inspection_result !== undefined) {
      resolved.inspection_result = msg.inspection_result;
    }
    else {
      resolved.inspection_result = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SubmitTrayRequest,
  Response: SubmitTrayResponse,
  md5sum() { return '02ca9d3d33cd5aa38b11d30b6d8538ae'; },
  datatype() { return 'nist_gear/SubmitTray'; }
};
