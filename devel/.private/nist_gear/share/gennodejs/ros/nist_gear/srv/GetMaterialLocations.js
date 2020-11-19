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

let StorageUnit = require('../msg/StorageUnit.js');

//-----------------------------------------------------------

class GetMaterialLocationsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.material_type = null;
    }
    else {
      if (initObj.hasOwnProperty('material_type')) {
        this.material_type = initObj.material_type
      }
      else {
        this.material_type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMaterialLocationsRequest
    // Serialize message field [material_type]
    bufferOffset = _serializer.string(obj.material_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMaterialLocationsRequest
    let len;
    let data = new GetMaterialLocationsRequest(null);
    // Deserialize message field [material_type]
    data.material_type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.material_type.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/GetMaterialLocationsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0792282be4b01a1cf5b25de45b5326c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Query storage locations for a particular material type.
    
    string material_type  # the type of material for which to query locations
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMaterialLocationsRequest(null);
    if (msg.material_type !== undefined) {
      resolved.material_type = msg.material_type;
    }
    else {
      resolved.material_type = ''
    }

    return resolved;
    }
};

class GetMaterialLocationsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.storage_units = null;
    }
    else {
      if (initObj.hasOwnProperty('storage_units')) {
        this.storage_units = initObj.storage_units
      }
      else {
        this.storage_units = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMaterialLocationsResponse
    // Serialize message field [storage_units]
    // Serialize the length for message field [storage_units]
    bufferOffset = _serializer.uint32(obj.storage_units.length, buffer, bufferOffset);
    obj.storage_units.forEach((val) => {
      bufferOffset = StorageUnit.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetMaterialLocationsResponse
    let len;
    let data = new GetMaterialLocationsResponse(null);
    // Deserialize message field [storage_units]
    // Deserialize array length for message field [storage_units]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.storage_units = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.storage_units[i] = StorageUnit.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.storage_units.forEach((val) => {
      length += StorageUnit.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'nist_gear/GetMaterialLocationsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51331790d22677d8b30363fdfeb6b55d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    StorageUnit[] storage_units  # storage units where the material may be found
    
    
    ================================================================================
    MSG: nist_gear/StorageUnit
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
    const resolved = new GetMaterialLocationsResponse(null);
    if (msg.storage_units !== undefined) {
      resolved.storage_units = new Array(msg.storage_units.length);
      for (let i = 0; i < resolved.storage_units.length; ++i) {
        resolved.storage_units[i] = StorageUnit.Resolve(msg.storage_units[i]);
      }
    }
    else {
      resolved.storage_units = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetMaterialLocationsRequest,
  Response: GetMaterialLocationsResponse,
  md5sum() { return 'cbf263a50360138b80b1bdd46f5ff56f'; },
  datatype() { return 'nist_gear/GetMaterialLocations'; }
};
