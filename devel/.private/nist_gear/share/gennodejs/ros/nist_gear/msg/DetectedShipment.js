// Auto-generated. Do not edit!

// (in-package nist_gear.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DetectedProduct = require('./DetectedProduct.js');

//-----------------------------------------------------------

class DetectedShipment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.destination_id = null;
      this.products = null;
    }
    else {
      if (initObj.hasOwnProperty('destination_id')) {
        this.destination_id = initObj.destination_id
      }
      else {
        this.destination_id = '';
      }
      if (initObj.hasOwnProperty('products')) {
        this.products = initObj.products
      }
      else {
        this.products = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedShipment
    // Serialize message field [destination_id]
    bufferOffset = _serializer.string(obj.destination_id, buffer, bufferOffset);
    // Serialize message field [products]
    // Serialize the length for message field [products]
    bufferOffset = _serializer.uint32(obj.products.length, buffer, bufferOffset);
    obj.products.forEach((val) => {
      bufferOffset = DetectedProduct.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedShipment
    let len;
    let data = new DetectedShipment(null);
    // Deserialize message field [destination_id]
    data.destination_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [products]
    // Deserialize array length for message field [products]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.products = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.products[i] = DetectedProduct.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.destination_id.length;
    object.products.forEach((val) => {
      length += DetectedProduct.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nist_gear/DetectedShipment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa636304139751ae787eeb3a3793e615';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DetectedShipment(null);
    if (msg.destination_id !== undefined) {
      resolved.destination_id = msg.destination_id;
    }
    else {
      resolved.destination_id = ''
    }

    if (msg.products !== undefined) {
      resolved.products = new Array(msg.products.length);
      for (let i = 0; i < resolved.products.length; ++i) {
        resolved.products[i] = DetectedProduct.Resolve(msg.products[i]);
      }
    }
    else {
      resolved.products = []
    }

    return resolved;
    }
};

module.exports = DetectedShipment;
