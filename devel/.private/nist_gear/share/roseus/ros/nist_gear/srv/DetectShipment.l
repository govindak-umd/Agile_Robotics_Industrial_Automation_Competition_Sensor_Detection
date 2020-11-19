;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::DetectShipment)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'DetectShipment (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::DETECTSHIPMENT")
  (make-package "NIST_GEAR::DETECTSHIPMENT"))
(unless (find-package "NIST_GEAR::DETECTSHIPMENTREQUEST")
  (make-package "NIST_GEAR::DETECTSHIPMENTREQUEST"))
(unless (find-package "NIST_GEAR::DETECTSHIPMENTRESPONSE")
  (make-package "NIST_GEAR::DETECTSHIPMENTRESPONSE"))

(in-package "ROS")





(defclass nist_gear::DetectShipmentRequest
  :super ros::object
  :slots ())

(defmethod nist_gear::DetectShipmentRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass nist_gear::DetectShipmentResponse
  :super ros::object
  :slots (_shipment ))

(defmethod nist_gear::DetectShipmentResponse
  (:init
   (&key
    ((:shipment __shipment) (instance nist_gear::DetectedShipment :init))
    )
   (send-super :init)
   (setq _shipment __shipment)
   self)
  (:shipment
   (&rest __shipment)
   (if (keywordp (car __shipment))
       (send* _shipment __shipment)
     (progn
       (if __shipment (setq _shipment (car __shipment)))
       _shipment)))
  (:serialization-length
   ()
   (+
    ;; nist_gear/DetectedShipment _shipment
    (send _shipment :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nist_gear/DetectedShipment _shipment
       (send _shipment :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nist_gear/DetectedShipment _shipment
     (send _shipment :deserialize buf ptr-) (incf ptr- (send _shipment :serialization-length))
   ;;
   self)
  )

(defclass nist_gear::DetectShipment
  :super ros::object
  :slots ())

(setf (get nist_gear::DetectShipment :md5sum-) "f1cde41b69fdae4a3f7f6ab4fbc94332")
(setf (get nist_gear::DetectShipment :datatype-) "nist_gear/DetectShipment")
(setf (get nist_gear::DetectShipment :request) nist_gear::DetectShipmentRequest)
(setf (get nist_gear::DetectShipment :response) nist_gear::DetectShipmentResponse)

(defmethod nist_gear::DetectShipmentRequest
  (:response () (instance nist_gear::DetectShipmentResponse :init)))

(setf (get nist_gear::DetectShipmentRequest :md5sum-) "f1cde41b69fdae4a3f7f6ab4fbc94332")
(setf (get nist_gear::DetectShipmentRequest :datatype-) "nist_gear/DetectShipmentRequest")
(setf (get nist_gear::DetectShipmentRequest :definition-)
      "# Detect shipment
# Called to ask a tray to report what products were placed on it
---
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
")

(setf (get nist_gear::DetectShipmentResponse :md5sum-) "f1cde41b69fdae4a3f7f6ab4fbc94332")
(setf (get nist_gear::DetectShipmentResponse :datatype-) "nist_gear/DetectShipmentResponse")
(setf (get nist_gear::DetectShipmentResponse :definition-)
      "# Detect shipment
# Called to ask a tray to report what products were placed on it
---
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
")



(provide :nist_gear/DetectShipment "f1cde41b69fdae4a3f7f6ab4fbc94332")


