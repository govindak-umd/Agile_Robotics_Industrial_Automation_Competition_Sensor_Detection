
"use strict";

let GetMaterialLocations = require('./GetMaterialLocations.js')
let DetectShipment = require('./DetectShipment.js')
let PopulationControl = require('./PopulationControl.js')
let SubmitShipment = require('./SubmitShipment.js')
let VacuumGripperControl = require('./VacuumGripperControl.js')
let AGVControl = require('./AGVControl.js')
let DroneControl = require('./DroneControl.js')
let SubmitTray = require('./SubmitTray.js')
let ConveyorBeltControl = require('./ConveyorBeltControl.js')

module.exports = {
  GetMaterialLocations: GetMaterialLocations,
  DetectShipment: DetectShipment,
  PopulationControl: PopulationControl,
  SubmitShipment: SubmitShipment,
  VacuumGripperControl: VacuumGripperControl,
  AGVControl: AGVControl,
  DroneControl: DroneControl,
  SubmitTray: SubmitTray,
  ConveyorBeltControl: ConveyorBeltControl,
};
