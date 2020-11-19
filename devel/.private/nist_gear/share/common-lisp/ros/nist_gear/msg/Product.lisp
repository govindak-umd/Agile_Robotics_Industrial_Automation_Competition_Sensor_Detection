; Auto-generated. Do not edit!


(cl:in-package nist_gear-msg)


;//! \htmlinclude Product.msg.html

(cl:defclass <Product> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Product (<Product>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Product>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Product)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-msg:<Product> is deprecated: use nist_gear-msg:Product instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Product>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:type-val is deprecated.  Use nist_gear-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Product>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:pose-val is deprecated.  Use nist_gear-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Product>) ostream)
  "Serializes a message object of type '<Product>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Product>) istream)
  "Deserializes a message object of type '<Product>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Product>)))
  "Returns string type for a message object of type '<Product>"
  "nist_gear/Product")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Product)))
  "Returns string type for a message object of type 'Product"
  "nist_gear/Product")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Product>)))
  "Returns md5sum for a message object of type '<Product>"
  "a85d66a9bab1444dfa98ed432ed88734")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Product)))
  "Returns md5sum for a message object of type 'Product"
  "a85d66a9bab1444dfa98ed432ed88734")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Product>)))
  "Returns full string definition for message of type '<Product>"
  (cl:format cl:nil "# Product message~%# This structure contains the information of an product contained in a shipment.~%~%# Product type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Product)))
  "Returns full string definition for message of type 'Product"
  (cl:format cl:nil "# Product message~%# This structure contains the information of an product contained in a shipment.~%~%# Product type~%string type~%~%# Target pose~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Product>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Product>))
  "Converts a ROS message object to a list"
  (cl:list 'Product
    (cl:cons ':type (type msg))
    (cl:cons ':pose (pose msg))
))
