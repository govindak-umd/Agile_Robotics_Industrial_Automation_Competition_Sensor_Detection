// Auto-generated. Do not edit!

// (in-package nist_gear.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StorageUnit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.unit_id = null;
    }
    else {
      if (initObj.hasOwnProperty('unit_id')) {
        this.unit_id = initObj.unit_id
      }
      else {
        this.unit_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StorageUnit
    // Serialize message field [unit_id]
    bufferOffset = _serializer.string(obj.unit_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StorageUnit
    let len;
    let data = new StorageUnit(null);
    // Deserialize message field [unit_id]
    data.unit_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.unit_id.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'nist_gear/StorageUnit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65485572bdec5ec0a1af089b1cfe78c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # StorageUnit message
    # This structure contains the high-level information of an abstract storage unit.
    
    # Storage unit ID
    string unit_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StorageUnit(null);
    if (msg.unit_id !== undefined) {
      resolved.unit_id = msg.unit_id;
    }
    else {
      resolved.unit_id = ''
    }

    return resolved;
    }
};

module.exports = StorageUnit;
