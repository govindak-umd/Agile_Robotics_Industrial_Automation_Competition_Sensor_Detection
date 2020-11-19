; Auto-generated. Do not edit!


(cl:in-package nist_gear-msg)


;//! \htmlinclude StorageUnit.msg.html

(cl:defclass <StorageUnit> (roslisp-msg-protocol:ros-message)
  ((unit_id
    :reader unit_id
    :initarg :unit_id
    :type cl:string
    :initform ""))
)

(cl:defclass StorageUnit (<StorageUnit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StorageUnit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StorageUnit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-msg:<StorageUnit> is deprecated: use nist_gear-msg:StorageUnit instead.")))

(cl:ensure-generic-function 'unit_id-val :lambda-list '(m))
(cl:defmethod unit_id-val ((m <StorageUnit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:unit_id-val is deprecated.  Use nist_gear-msg:unit_id instead.")
  (unit_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StorageUnit>) ostream)
  "Serializes a message object of type '<StorageUnit>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StorageUnit>) istream)
  "Deserializes a message object of type '<StorageUnit>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StorageUnit>)))
  "Returns string type for a message object of type '<StorageUnit>"
  "nist_gear/StorageUnit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StorageUnit)))
  "Returns string type for a message object of type 'StorageUnit"
  "nist_gear/StorageUnit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StorageUnit>)))
  "Returns md5sum for a message object of type '<StorageUnit>"
  "65485572bdec5ec0a1af089b1cfe78c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StorageUnit)))
  "Returns md5sum for a message object of type 'StorageUnit"
  "65485572bdec5ec0a1af089b1cfe78c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StorageUnit>)))
  "Returns full string definition for message of type '<StorageUnit>"
  (cl:format cl:nil "# StorageUnit message~%# This structure contains the high-level information of an abstract storage unit.~%~%# Storage unit ID~%string unit_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StorageUnit)))
  "Returns full string definition for message of type 'StorageUnit"
  (cl:format cl:nil "# StorageUnit message~%# This structure contains the high-level information of an abstract storage unit.~%~%# Storage unit ID~%string unit_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StorageUnit>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'unit_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StorageUnit>))
  "Converts a ROS message object to a list"
  (cl:list 'StorageUnit
    (cl:cons ':unit_id (unit_id msg))
))
