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

let DetectedShipment = require('../msg/DetectedShipment.js');

//-----------------------------------------------------------

class DetectShipmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectShipmentRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectShipmentRequest
    let len;
    let data = new DetectShipmentRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/DetectShipmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Detect shipment
    # Called to ask a tray to report what products were placed on it
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectShipmentRequest(null);
    return resolved;
    }
};

class DetectShipmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shipment = null;
    }
    else {
      if (initObj.hasOwnProperty('shipment')) {
        this.shipment = initObj.shipment
      }
      else {
        this.shipment = new DetectedShipment();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectShipmentResponse
    // Serialize message field [shipment]
    bufferOffset = DetectedShipment.serialize(obj.shipment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectShipmentResponse
    let len;
    let data = new DetectShipmentResponse(null);
    // Deserialize message field [shipment]
    data.shipment = DetectedShipment.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DetectedShipment.getMessageSize(object.shipment);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/DetectShipmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1cde41b69fdae4a3f7f6ab4fbc94332';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # What was detected in the tray
    DetectedShipment shipment
    
    
    ================================================================================
    MSG: nist_gear/DetectedShipment
    # Shipment contents message
    # This structure contains the information about a shipment being submitted
    
    # The ID of the shipping_box or tray the shipment was detected in
    string destination_id
    
    # Collection of products
    DetectedProduct[] products
    
    ================================================================================
    MSG: nist_gear/DetectedProduct
    # DetectedProduct message
    # This structure contains the information of a detected product.
    
    # Product type
    string type
    
    # Whether or not the product is faulty
    bool is_faulty
    
    # Target pose
    geometry_msgs/Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectShipmentResponse(null);
    if (msg.shipment !== undefined) {
      resolved.shipment = DetectedShipment.Resolve(msg.shipment)
    }
    else {
      resolved.shipment = new DetectedShipment()
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectShipmentRequest,
  Response: DetectShipmentResponse,
  md5sum() { return 'f1cde41b69fdae4a3f7f6ab4fbc94332'; },
  datatype() { return 'nist_gear/DetectShipment'; }
};
