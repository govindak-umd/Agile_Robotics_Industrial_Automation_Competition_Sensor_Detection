; Auto-generated. Do not edit!


(cl:in-package nist_gear-srv)


;//! \htmlinclude DetectShipment-request.msg.html

(cl:defclass <DetectShipment-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DetectShipment-request (<DetectShipment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectShipment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectShipment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<DetectShipment-request> is deprecated: use nist_gear-srv:DetectShipment-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectShipment-request>) ostream)
  "Serializes a message object of type '<DetectShipment-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectShipment-request>) istream)
  "Deserializes a message object of type '<DetectShipment-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectShipment-request>)))
  "Returns string type for a service object of type '<DetectShipment-request>"
  "nist_gear/DetectShipmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectShipment-request)))
  "Returns string type for a service object of type 'DetectShipment-request"
  "nist_gear/DetectShipmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectShipment-request>)))
  "Returns md5sum for a message object of type '<DetectShipment-request>"
  "f1cde41b69fdae4a3f7f6ab4fbc94332")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectShipment-request)))
  "Returns md5sum for a message object of type 'DetectShipment-request"
  "f1cde41b69fdae4a3f7f6ab4fbc94332")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectShipment-request>)))
  "Returns full string definition for message of type '<DetectShipment-request>"
  (cl:format cl:nil "# Detect shipment~%# Called to ask a tray to report what products were placed on it~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectShipment-request)))
  "Returns full string definition for message of type 'DetectShipment-request"
  (cl:format cl:nil "# Detect shipment~%# Called to ask a tray to report what products were placed on it~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectShipment-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectShipment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectShipment-request
))
;//! \htmlinclude DetectShipment-response.msg.html

(cl:defclass <DetectShipment-response> (roslisp-msg-protocol:ros-message)
  ((shipment
    :reader shipment
    :initarg :shipment
    :type nist_gear-msg:DetectedShipment
    :initform (cl:make-instance 'nist_gear-msg:DetectedShipment)))
)

(cl:defclass DetectShipment-response (<DetectShipment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectShipment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectShipment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<DetectShipment-response> is deprecated: use nist_gear-srv:DetectShipment-response instead.")))

(cl:ensure-generic-function 'shipment-val :lambda-list '(m))
(cl:defmethod shipment-val ((m <DetectShipment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:shipment-val is deprecated.  Use nist_gear-srv:shipment instead.")
  (shipment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectShipment-response>) ostream)
  "Serializes a message object of type '<DetectShipment-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shipment) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectShipment-response>) istream)
  "Deserializes a message object of type '<DetectShipment-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shipment) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectShipment-response>)))
  "Returns string type for a service object of type '<DetectShipment-response>"
  "nist_gear/DetectShipmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectShipment-response)))
  "Returns string type for a service object of type 'DetectShipment-response"
  "nist_gear/DetectShipmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectShipment-response>)))
  "Returns md5sum for a message object of type '<DetectShipment-response>"
  "f1cde41b69fdae4a3f7f6ab4fbc94332")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectShipment-response)))
  "Returns md5sum for a message object of type 'DetectShipment-response"
  "f1cde41b69fdae4a3f7f6ab4fbc94332")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectShipment-response>)))
  "Returns full string definition for message of type '<DetectShipment-response>"
  (cl:format cl:nil "# What was detected in the tray~%DetectedShipment shipment~%~%~%================================================================================~%MSG: nist_gear/DetectedShipment~%# Shipment contents message~%# This structure contains the information about a shipment being submitted~%~%# The ID of the shipping_box or tray the shipment was detected in~%string destination_id~%~%# Collection of products~%DetectedProduct[] products~%~%================================================================================~%MSG: nist_gear/DetectedProduct~%# DetectedProduct message~%# This structure contains the information of a detected product.~%~%# Product type~%string type~%~%# Whether or not the product is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectShipment-response)))
  "Returns full string definition for message of type 'DetectShipment-response"
  (cl:format cl:nil "# What was detected in the tray~%DetectedShipment shipment~%~%~%================================================================================~%MSG: nist_gear/DetectedShipment~%# Shipment contents message~%# This structure contains the information about a shipment being submitted~%~%# The ID of the shipping_box or tray the shipment was detected in~%string destination_id~%~%# Collection of products~%DetectedProduct[] products~%~%================================================================================~%MSG: nist_gear/DetectedProduct~%# DetectedProduct message~%# This structure contains the information of a detected product.~%~%# Product type~%string type~%~%# Whether or not the product is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectShipment-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shipment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectShipment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectShipment-response
    (cl:cons ':shipment (shipment msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectShipment)))
  'DetectShipment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectShipment)))
  'DetectShipment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectShipment)))
  "Returns string type for a service object of type '<DetectShipment>"
  "nist_gear/DetectShipment")