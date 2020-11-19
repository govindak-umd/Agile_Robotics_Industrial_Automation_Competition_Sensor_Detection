; Auto-generated. Do not edit!


(cl:in-package nist_gear-srv)


;//! \htmlinclude PopulationControl-request.msg.html

(cl:defclass <PopulationControl-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform ""))
)

(cl:defclass PopulationControl-request (<PopulationControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PopulationControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PopulationControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<PopulationControl-request> is deprecated: use nist_gear-srv:PopulationControl-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <PopulationControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:action-val is deprecated.  Use nist_gear-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PopulationControl-request>) ostream)
  "Serializes a message object of type '<PopulationControl-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PopulationControl-request>) istream)
  "Deserializes a message object of type '<PopulationControl-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PopulationControl-request>)))
  "Returns string type for a service object of type '<PopulationControl-request>"
  "nist_gear/PopulationControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PopulationControl-request)))
  "Returns string type for a service object of type 'PopulationControl-request"
  "nist_gear/PopulationControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PopulationControl-request>)))
  "Returns md5sum for a message object of type '<PopulationControl-request>"
  "02058b7d55716526fae62eb68abd6f31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PopulationControl-request)))
  "Returns md5sum for a message object of type 'PopulationControl-request"
  "02058b7d55716526fae62eb68abd6f31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PopulationControl-request>)))
  "Returns full string definition for message of type '<PopulationControl-request>"
  (cl:format cl:nil "# Population control~%~%# desired action: \"pause\", \"resume\" or \"restart\"~%string action~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PopulationControl-request)))
  "Returns full string definition for message of type 'PopulationControl-request"
  (cl:format cl:nil "# Population control~%~%# desired action: \"pause\", \"resume\" or \"restart\"~%string action~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PopulationControl-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PopulationControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PopulationControl-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude PopulationControl-response.msg.html

(cl:defclass <PopulationControl-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PopulationControl-response (<PopulationControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PopulationControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PopulationControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<PopulationControl-response> is deprecated: use nist_gear-srv:PopulationControl-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PopulationControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:success-val is deprecated.  Use nist_gear-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PopulationControl-response>) ostream)
  "Serializes a message object of type '<PopulationControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PopulationControl-response>) istream)
  "Deserializes a message object of type '<PopulationControl-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PopulationControl-response>)))
  "Returns string type for a service object of type '<PopulationControl-response>"
  "nist_gear/PopulationControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PopulationControl-response)))
  "Returns string type for a service object of type 'PopulationControl-response"
  "nist_gear/PopulationControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PopulationControl-response>)))
  "Returns md5sum for a message object of type '<PopulationControl-response>"
  "02058b7d55716526fae62eb68abd6f31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PopulationControl-response)))
  "Returns md5sum for a message object of type 'PopulationControl-response"
  "02058b7d55716526fae62eb68abd6f31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PopulationControl-response>)))
  "Returns full string definition for message of type '<PopulationControl-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PopulationControl-response)))
  "Returns full string definition for message of type 'PopulationControl-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PopulationControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PopulationControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PopulationControl-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PopulationControl)))
  'PopulationControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PopulationControl)))
  'PopulationControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PopulationControl)))
  "Returns string type for a service object of type '<PopulationControl>"
  "nist_gear/PopulationControl")