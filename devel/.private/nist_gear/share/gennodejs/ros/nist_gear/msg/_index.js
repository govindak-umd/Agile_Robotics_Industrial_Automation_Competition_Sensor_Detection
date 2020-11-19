
"use strict";

let LogicalCameraImage = require('./LogicalCameraImage.js');
let TrayContents = require('./TrayContents.js');
let ConveyorBeltState = require('./ConveyorBeltState.js');
let DetectedShipment = require('./DetectedShipment.js');
let Shipment = require('./Shipment.js');
let DetectedProduct = require('./DetectedProduct.js');
let Model = require('./Model.js');
let Order = require('./Order.js');
let ShippingBox = require('./ShippingBox.js');
let PopulationState = require('./PopulationState.js');
let VacuumGripperState = require('./VacuumGripperState.js');
let StorageUnit = require('./StorageUnit.js');
let Product = require('./Product.js');
let Proximity = require('./Proximity.js');

module.exports = {
  LogicalCameraImage: LogicalCameraImage,
  TrayContents: TrayContents,
  ConveyorBeltState: ConveyorBeltState,
  DetectedShipment: DetectedShipment,
  Shipment: Shipment,
  DetectedProduct: DetectedProduct,
  Model: Model,
  Order: Order,
  ShippingBox: ShippingBox,
  PopulationState: PopulationState,
  VacuumGripperState: VacuumGripperState,
  StorageUnit: StorageUnit,
  Product: Product,
  Proximity: Proximity,
};
