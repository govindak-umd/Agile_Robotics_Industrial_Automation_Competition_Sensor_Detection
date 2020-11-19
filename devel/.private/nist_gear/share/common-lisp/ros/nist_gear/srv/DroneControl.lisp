; Auto-generated. Do not edit!


(cl:in-package nist_gear-srv)


;//! \htmlinclude DroneControl-request.msg.html

(cl:defclass <DroneControl-request> (roslisp-msg-protocol:ros-message)
  ((shipment_type
    :reader shipment_type
    :initarg :shipment_type
    :type cl:string
    :initform ""))
)

(cl:defclass DroneControl-request (<DroneControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<DroneControl-request> is deprecated: use nist_gear-srv:DroneControl-request instead.")))

(cl:ensure-generic-function 'shipment_type-val :lambda-list '(m))
(cl:defmethod shipment_type-val ((m <DroneControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:shipment_type-val is deprecated.  Use nist_gear-srv:shipment_type instead.")
  (shipment_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneControl-request>) ostream)
  "Serializes a message object of type '<DroneControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shipment_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shipment_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneControl-request>) istream)
  "Deserializes a message object of type '<DroneControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shipment_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shipment_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneControl-request>)))
  "Returns string type for a service object of type '<DroneControl-request>"
  "nist_gear/DroneControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneControl-request)))
  "Returns string type for a service object of type 'DroneControl-request"
  "nist_gear/DroneControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneControl-request>)))
  "Returns md5sum for a message object of type '<DroneControl-request>"
  "5df8ff5f4552660de2945f5478b39f6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneControl-request)))
  "Returns md5sum for a message object of type 'DroneControl-request"
  "5df8ff5f4552660de2945f5478b39f6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneControl-request>)))
  "Returns full string definition for message of type '<DroneControl-request>"
  (cl:format cl:nil "# Drone Control~%~%string shipment_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneControl-request)))
  "Returns full string definition for message of type 'DroneControl-request"
  (cl:format cl:nil "# Drone Control~%~%string shipment_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'shipment_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneControl-request
    (cl:cons ':shipment_type (shipment_type msg))
))
;//! \htmlinclude DroneControl-response.msg.html

(cl:defclass <DroneControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DroneControl-response (<DroneControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<DroneControl-response> is deprecated: use nist_gear-srv:DroneControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DroneControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:success-val is deprecated.  Use nist_gear-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneControl-response>) ostream)
  "Serializes a message object of type '<DroneControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneControl-response>) istream)
  "Deserializes a message object of type '<DroneControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneControl-response>)))
  "Returns string type for a service object of type '<DroneControl-response>"
  "nist_gear/DroneControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneControl-response)))
  "Returns string type for a service object of type 'DroneControl-response"
  "nist_gear/DroneControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneControl-response>)))
  "Returns md5sum for a message object of type '<DroneControl-response>"
  "5df8ff5f4552660de2945f5478b39f6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneControl-response)))
  "Returns md5sum for a message object of type 'DroneControl-response"
  "5df8ff5f4552660de2945f5478b39f6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneControl-response>)))
  "Returns full string definition for message of type '<DroneControl-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneControl-response)))
  "Returns full string definition for message of type 'DroneControl-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DroneControl)))
  'DroneControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DroneControl)))
  'DroneControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneControl)))
  "Returns string type for a service object of type '<DroneControl>"
  "nist_gear/DroneControl")