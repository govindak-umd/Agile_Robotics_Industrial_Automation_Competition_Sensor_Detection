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

class SubmitShipmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination_id = null;
      this.shipment_type = null;
    }
    else {
      if (initObj.hasOwnProperty('destination_id')) {
        this.destination_id = initObj.destination_id
      }
      else {
        this.destination_id = '';
      }
      if (initObj.hasOwnProperty('shipment_type')) {
        this.shipment_type = initObj.shipment_type
      }
      else {
        this.shipment_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubmitShipmentRequest
    // Serialize message field [destination_id]
    bufferOffset = _serializer.string(obj.destination_id, buffer, bufferOffset);
    // Serialize message field [shipment_type]
    bufferOffset = _serializer.string(obj.shipment_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmitShipmentRequest
    let len;
    let data = new SubmitShipmentRequest(null);
    // Deserialize message field [destination_id]
    data.destination_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shipment_type]
    data.shipment_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.destination_id.length;
    length += object.shipment_type.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/SubmitShipmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bdb6c31456a709fb83a7e895b1c51bb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ID used to say which tray or AGV this is
    # allowed values are "1", or "2" to indicate which agv
    # or the name of the tray on the agv
    string destination_id
    # ID used to say which order and shipment this is
    string shipment_type
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmitShipmentRequest(null);
    if (msg.destination_id !== undefined) {
      resolved.destination_id = msg.destination_id;
    }
    else {
      resolved.destination_id = ''
    }

    if (msg.shipment_type !== undefined) {
      resolved.shipment_type = msg.shipment_type;
    }
    else {
      resolved.shipment_type = ''
    }

    return resolved;
    }
};

class SubmitShipmentResponse {
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
    // Serializes a message object of type SubmitShipmentResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [inspection_result]
    bufferOffset = _serializer.float32(obj.inspection_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubmitShipmentResponse
    let len;
    let data = new SubmitShipmentResponse(null);
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
    return 'nist_gear/SubmitShipmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a81550f277a1c03d6d98406331d270c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    # The score added by the submitted shipment
    float32 inspection_result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubmitShipmentResponse(null);
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
  Request: SubmitShipmentRequest,
  Response: SubmitShipmentResponse,
  md5sum() { return '942098783c59c2efb4c125806191e938'; },
  datatype() { return 'nist_gear/SubmitShipment'; }
};
