
(cl:in-package :asdf)

(defsystem "nist_gear-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nist_gear-msg
)
  :components ((:file "_package")
    (:file "AGVControl" :depends-on ("_package_AGVControl"))
    (:file "_package_AGVControl" :depends-on ("_package"))
    (:file "ConveyorBeltControl" :depends-on ("_package_ConveyorBeltControl"))
    (:file "_package_ConveyorBeltControl" :depends-on ("_package"))
    (:file "DetectShipment" :depends-on ("_package_DetectShipment"))
    (:file "_package_DetectShipment" :depends-on ("_package"))
    (:file "DroneControl" :depends-on ("_package_DroneControl"))
    (:file "_package_DroneControl" :depends-on ("_package"))
    (:file "GetMaterialLocations" :depends-on ("_package_GetMaterialLocations"))
    (:file "_package_GetMaterialLocations" :depends-on ("_package"))
    (:file "PopulationControl" :depends-on ("_package_PopulationControl"))
    (:file "_package_PopulationControl" :depends-on ("_package"))
    (:file "SubmitShipment" :depends-on ("_package_SubmitShipment"))
    (:file "_package_SubmitShipment" :depends-on ("_package"))
    (:file "SubmitTray" :depends-on ("_package_SubmitTray"))
    (:file "_package_SubmitTray" :depends-on ("_package"))
    (:file "VacuumGripperControl" :depends-on ("_package_VacuumGripperControl"))
    (:file "_package_VacuumGripperControl" :depends-on ("_package"))
  ))