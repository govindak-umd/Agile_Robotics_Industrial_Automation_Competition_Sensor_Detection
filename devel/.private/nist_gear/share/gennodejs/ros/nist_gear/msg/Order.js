// Auto-generated. Do not edit!

// (in-package nist_gear.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Shipment = require('./Shipment.js');

//-----------------------------------------------------------

class Order {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.order_id = null;
      this.shipments = null;
    }
    else {
      if (initObj.hasOwnProperty('order_id')) {
        this.order_id = initObj.order_id
      }
      else {
        this.order_id = '';
      }
      if (initObj.hasOwnProperty('shipments')) {
        this.shipments = initObj.shipments
      }
      else {
        this.shipments = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Order
    // Serialize message field [order_id]
    bufferOffset = _serializer.string(obj.order_id, buffer, bufferOffset);
    // Serialize message field [shipments]
    // Serialize the length for message field [shipments]
    bufferOffset = _serializer.uint32(obj.shipments.length, buffer, bufferOffset);
    obj.shipments.forEach((val) => {
      bufferOffset = Shipment.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Order
    let len;
    let data = new Order(null);
    // Deserialize message field [order_id]
    data.order_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shipments]
    // Deserialize array length for message field [shipments]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.shipments = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.shipments[i] = Shipment.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.order_id.length;
    object.shipments.forEach((val) => {
      length += Shipment.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nist_gear/Order';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37a37d6e765c675eee7c113bc580da11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Order message
    # This structure contains the information of an order.
    
    # ID of the order
    string order_id
    
    # Collection of shipments
    Shipment[] shipments
    
    ================================================================================
    MSG: nist_gear/Shipment
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
    const resolved = new Order(null);
    if (msg.order_id !== undefined) {
      resolved.order_id = msg.order_id;
    }
    else {
      resolved.order_id = ''
    }

    if (msg.shipments !== undefined) {
      resolved.shipments = new Array(msg.shipments.length);
      for (let i = 0; i < resolved.shipments.length; ++i) {
        resolved.shipments[i] = Shipment.Resolve(msg.shipments[i]);
      }
    }
    else {
      resolved.shipments = []
    }

    return resolved;
    }
};

module.exports = Order;
