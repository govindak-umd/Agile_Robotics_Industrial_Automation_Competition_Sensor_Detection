; Auto-generated. Do not edit!


(cl:in-package nist_gear-msg)


;//! \htmlinclude DetectedProduct.msg.html

(cl:defclass <DetectedProduct> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (is_faulty
    :reader is_faulty
    :initarg :is_faulty
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass DetectedProduct (<DetectedProduct>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedProduct>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedProduct)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-msg:<DetectedProduct> is deprecated: use nist_gear-msg:DetectedProduct instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <DetectedProduct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:type-val is deprecated.  Use nist_gear-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'is_faulty-val :lambda-list '(m))
(cl:defmethod is_faulty-val ((m <DetectedProduct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:is_faulty-val is deprecated.  Use nist_gear-msg:is_faulty instead.")
  (is_faulty m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <DetectedProduct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:pose-val is deprecated.  Use nist_gear-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedProduct>) ostream)
  "Serializes a message object of type '<DetectedProduct>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_faulty) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedProduct>) istream)
  "Deserializes a message object of type '<DetectedProduct>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'is_faulty) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedProduct>)))
  "Returns string type for a message object of type '<DetectedProduct>"
  "nist_gear/DetectedProduct")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedProduct)))
  "Returns string type for a message object of type 'DetectedProduct"
  "nist_gear/DetectedProduct")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedProduct>)))
  "Returns md5sum for a message object of type '<DetectedProduct>"
  "c1078dfbc537fe0a742246656582af4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedProduct)))
  "Returns md5sum for a message object of type 'DetectedProduct"
  "c1078dfbc537fe0a742246656582af4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedProduct>)))
  "Returns full string definition for message of type '<DetectedProduct>"
  (cl:format cl:nil "# DetectedProduct message~%# This structure contains the information of a detected product.~%~%# Product type~%string type~%~%# Whether or not the product is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedProduct)))
  "Returns full string definition for message of type 'DetectedProduct"
  (cl:format cl:nil "# DetectedProduct message~%# This structure contains the information of a detected product.~%~%# Product type~%string type~%~%# Whether or not the product is faulty~%bool is_faulty~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedProduct>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedProduct>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedProduct
    (cl:cons ':type (type msg))
    (cl:cons ':is_faulty (is_faulty msg))
    (cl:cons ':pose (pose msg))
))
