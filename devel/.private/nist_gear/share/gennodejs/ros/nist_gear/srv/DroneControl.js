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

class DroneControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shipment_type = null;
    }
    else {
      if (initObj.hasOwnProperty('shipment_type')) {
        this.shipment_type = initObj.shipment_type
      }
      else {
        this.shipment_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DroneControlRequest
    // Serialize message field [shipment_type]
    bufferOffset = _serializer.string(obj.shipment_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DroneControlRequest
    let len;
    let data = new DroneControlRequest(null);
    // Deserialize message field [shipment_type]
    data.shipment_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shipment_type.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/DroneControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cb3e9e27775802f44b63ca135bf6dec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Drone Control
    
    string shipment_type
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DroneControlRequest(null);
    if (msg.shipment_type !== undefined) {
      resolved.shipment_type = msg.shipment_type;
    }
    else {
      resolved.shipment_type = ''
    }

    return resolved;
    }
};

class DroneControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DroneControlResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DroneControlResponse
    let len;
    let data = new DroneControlResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/DroneControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DroneControlResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: DroneControlRequest,
  Response: DroneControlResponse,
  md5sum() { return '5df8ff5f4552660de2945f5478b39f6b'; },
  datatype() { return 'nist_gear/DroneControl'; }
};
