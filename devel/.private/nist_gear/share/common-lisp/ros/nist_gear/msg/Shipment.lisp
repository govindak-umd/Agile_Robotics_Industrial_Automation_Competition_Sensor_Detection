; Auto-generated. Do not edit!


(cl:in-package nist_gear-msg)


;//! \htmlinclude Shipment.msg.html

(cl:defclass <Shipment> (roslisp-msg-protocol:ros-message)
  ((shipment_type
    :reader shipment_type
    :initarg :shipment_type
    :type cl:string
    :initform "")
   (agv_id
    :reader agv_id
    :initarg :agv_id
    :type cl:string
    :initform "")
   (products
    :reader products
    :initarg :products
    :type (cl:vector nist_gear-msg:Product)
   :initform (cl:make-array 0 :element-type 'nist_gear-msg:Product :initial-element (cl:make-instance 'nist_gear-msg:Product))))
)

(cl:defclass Shipment (<Shipment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shipment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shipment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-msg:<Shipment> is deprecated: use nist_gear-msg:Shipment instead.")))

(cl:ensure-generic-function 'shipment_type-val :lambda-list '(m))
(cl:defmethod shipment_type-val ((m <Shipment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:shipment_type-val is deprecated.  Use nist_gear-msg:shipment_type instead.")
  (shipment_type m))

(cl:ensure-generic-function 'agv_id-val :lambda-list '(m))
(cl:defmethod agv_id-val ((m <Shipment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:agv_id-val is deprecated.  Use nist_gear-msg:agv_id instead.")
  (agv_id m))

(cl:ensure-generic-function 'products-val :lambda-list '(m))
(cl:defmethod products-val ((m <Shipment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:products-val is deprecated.  Use nist_gear-msg:products instead.")
  (products m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shipment>) ostream)
  "Serializes a message object of type '<Shipment>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shipment_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shipment_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'agv_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'agv_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'products))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'products))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shipment>) istream)
  "Deserializes a message object of type '<Shipment>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shipment_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shipment_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'agv_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'agv_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'products) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'products)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nist_gear-msg:Product))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shipment>)))
  "Returns string type for a message object of type '<Shipment>"
  "nist_gear/Shipment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shipment)))
  "Returns string type for a message object of type 'Shipment"
  "nist_gear/Shipment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shipment>)))
  "Returns md5sum for a message object of type '<Shipment>"
  "484213c903d81e9a6637b4075260ff0a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shipment)))
  "Returns md5sum for a message object of type 'Shipment"
  "484213c903d81e9a6637b4075260ff0a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shipment>)))
  "Returns full string definition for message of type '<Shipment>"
  (cl:format cl:nil "# Shipment message~%# This structure contains the information of shipment.~%~%# The type of shipment~%string shipment_type~%~%# ID used to say which AGV the shipment must be delivered to~%# Possible values are \"agv1\", \"agv2\", or \"any\"~%string agv_id~%~%# Collection of products~%Product[] products~%~%================================================================================~%MSG: nist_gear/Product~%# Product message~%# This structure contains the information of an product contained in a shipment.~%~%# Product type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shipment)))
  "Returns full string definition for message of type 'Shipment"
  (cl:format cl:nil "# Shipment message~%# This structure contains the information of shipment.~%~%# The type of shipment~%string shipment_type~%~%# ID used to say which AGV the shipment must be delivered to~%# Possible values are \"agv1\", \"agv2\", or \"any\"~%string agv_id~%~%# Collection of products~%Product[] products~%~%================================================================================~%MSG: nist_gear/Product~%# Product message~%# This structure contains the information of an product contained in a shipment.~%~%# Product type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shipment>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shipment_type))
     4 (cl:length (cl:slot-value msg 'agv_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'products) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shipment>))
  "Converts a ROS message object to a list"
  (cl:list 'Shipment
    (cl:cons ':shipment_type (shipment_type msg))
    (cl:cons ':agv_id (agv_id msg))
    (cl:cons ':products (products msg))
))
