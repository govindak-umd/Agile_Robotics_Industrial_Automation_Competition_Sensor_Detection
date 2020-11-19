// Auto-generated. Do not edit!

// (in-package nist_gear.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Product = require('./Product.js');

//-----------------------------------------------------------

class Shipment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.shipment_type = null;
      this.agv_id = null;
      this.products = null;
    }
    else {
      if (initObj.hasOwnProperty('shipment_type')) {
        this.shipment_type = initObj.shipment_type
      }
      else {
        this.shipment_type = '';
      }
      if (initObj.hasOwnProperty('agv_id')) {
        this.agv_id = initObj.agv_id
      }
      else {
        this.agv_id = '';
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
    // Serializes a message object of type Shipment
    // Serialize message field [shipment_type]
    bufferOffset = _serializer.string(obj.shipment_type, buffer, bufferOffset);
    // Serialize message field [agv_id]
    bufferOffset = _serializer.string(obj.agv_id, buffer, bufferOffset);
    // Serialize message field [products]
    // Serialize the length for message field [products]
    bufferOffset = _serializer.uint32(obj.products.length, buffer, bufferOffset);
    obj.products.forEach((val) => {
      bufferOffset = Product.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Shipment
    let len;
    let data = new Shipment(null);
    // Deserialize message field [shipment_type]
    data.shipment_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [agv_id]
    data.agv_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [products]
    // Deserialize array length for message field [products]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.products = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.products[i] = Product.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.shipment_type.length;
    length += object.agv_id.length;
    object.products.forEach((val) => {
      length += Product.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nist_gear/Shipment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '484213c903d81e9a6637b4075260ff0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Shipment message
    # This structure contains the information of shipment.
    
    # The type of shipment
    string shipment_type
    
    # ID used to say which AGV the shipment must be delivered to
    # Possible values are "agv1", "agv2", or "any"
    string agv_id
    
    # Collection of products
    Product[] products
    
    ================================================================================
    MSG: nist_gear/Product
    # Product message
    # This structure contains the information of an product contained in a shipment.
    
    # Product type
    string type
    
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
    const resolved = new Shipment(null);
    if (msg.shipment_type !== undefined) {
      resolved.shipment_type = msg.shipment_type;
    }
    else {
      resolved.shipment_type = ''
    }

    if (msg.agv_id !== undefined) {
      resolved.agv_id = msg.agv_id;
    }
    else {
      resolved.agv_id = ''
    }

    if (msg.products !== undefined) {
      resolved.products = new Array(msg.products.length);
      for (let i = 0; i < resolved.products.length; ++i) {
        resolved.products[i] = Product.Resolve(msg.products[i]);
      }
    }
    else {
      resolved.products = []
    }

    return resolved;
    }
};

module.exports = Shipment;
