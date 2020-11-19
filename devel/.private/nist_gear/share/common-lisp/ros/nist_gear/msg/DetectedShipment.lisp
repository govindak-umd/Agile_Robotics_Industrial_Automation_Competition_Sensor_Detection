; Auto-generated. Do not edit!


(cl:in-package nist_gear-msg)


;//! \htmlinclude DetectedShipment.msg.html

(cl:defclass <DetectedShipment> (roslisp-msg-protocol:ros-message)
  ((destination_id
    :reader destination_id
    :initarg :destination_id
    :type cl:string
    :initform "")
   (products
    :reader products
    :initarg :products
    :type (cl:vector nist_gear-msg:DetectedProduct)
   :initform (cl:make-array 0 :element-type 'nist_gear-msg:DetectedProduct :initial-element (cl:make-instance 'nist_gear-msg:DetectedProduct))))
)

(cl:defclass DetectedShipment (<DetectedShipment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedShipment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedShipment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-msg:<DetectedShipment> is deprecated: use nist_gear-msg:DetectedShipment instead.")))

(cl:ensure-generic-function 'destination_id-val :lambda-list '(m))
(cl:defmethod destination_id-val ((m <DetectedShipment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:destination_id-val is deprecated.  Use nist_gear-msg:destination_id instead.")
  (destination_id m))

(cl:ensure-generic-function 'products-val :lambda-list '(m))
(cl:defmethod products-val ((m <DetectedShipment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:products-val is deprecated.  Use nist_gear-msg:products instead.")
  (products m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedShipment>) ostream)
  "Serializes a message object of type '<DetectedShipment>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destination_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destination_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'products))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'products))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedShipment>) istream)
  "Deserializes a message object of type '<DetectedShipment>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destination_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'products) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'products)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nist_gear-msg:DetectedProduct))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedShipment>)))
  "Returns string type for a message object of type '<DetectedShipment>"
  "nist_gear/DetectedShipment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedShipment)))
  "Returns string type for a message object of type 'DetectedShipment"
  "nist_gear/DetectedShipment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedShipment>)))
  "Returns md5sum for a message object of type '<DetectedShipment>"
  "aa636304139751ae787eeb3a3793e615")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedShipment)))
  "Returns md5sum for a message object of type 'DetectedShipment"
  "aa636304139751ae787eeb3a3793e615")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedShipment>)))
  "Returns full string definition for message of type '<DetectedShipment>"
  (cl:format cl:nil "# Shipment contents message~%# This structure contains the information about a shipment being submitted~%~%# The ID of the shipping_box or tray the shipment was detected in~%string destination_id~%~%# Collection of products~%DetectedProduct[] products~%~%================================================================================~%MSG: nist_gear/DetectedProduct~%# DetectedProduct message~%# This structure contains the information of a detected product.~%~%# Product type~%string type~%~%# Whether or not the product is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedShipment)))
  "Returns full string definition for message of type 'DetectedShipment"
  (cl:format cl:nil "# Shipment contents message~%# This structure contains the information about a shipment being submitted~%~%# The ID of the shipping_box or tray the shipment was detected in~%string destination_id~%~%# Collection of products~%DetectedProduct[] products~%~%================================================================================~%MSG: nist_gear/DetectedProduct~%# DetectedProduct message~%# This structure contains the information of a detected product.~%~%# Product type~%string type~%~%# Whether or not the product is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedShipment>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'destination_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'products) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedShipment>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedShipment
    (cl:cons ':destination_id (destination_id msg))
    (cl:cons ':products (products msg))
))
