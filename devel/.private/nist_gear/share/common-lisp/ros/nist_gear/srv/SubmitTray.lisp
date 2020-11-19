; Auto-generated. Do not edit!


(cl:in-package nist_gear-srv)


;//! \htmlinclude SubmitTray-request.msg.html

(cl:defclass <SubmitTray-request> (roslisp-msg-protocol:ros-message)
  ((tray_id
    :reader tray_id
    :initarg :tray_id
    :type cl:string
    :initform "")
   (kit_type
    :reader kit_type
    :initarg :kit_type
    :type cl:string
    :initform ""))
)

(cl:defclass SubmitTray-request (<SubmitTray-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmitTray-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmitTray-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<SubmitTray-request> is deprecated: use nist_gear-srv:SubmitTray-request instead.")))

(cl:ensure-generic-function 'tray_id-val :lambda-list '(m))
(cl:defmethod tray_id-val ((m <SubmitTray-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:tray_id-val is deprecated.  Use nist_gear-srv:tray_id instead.")
  (tray_id m))

(cl:ensure-generic-function 'kit_type-val :lambda-list '(m))
(cl:defmethod kit_type-val ((m <SubmitTray-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:kit_type-val is deprecated.  Use nist_gear-srv:kit_type instead.")
  (kit_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmitTray-request>) ostream)
  "Serializes a message object of type '<SubmitTray-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tray_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tray_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kit_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kit_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmitTray-request>) istream)
  "Deserializes a message object of type '<SubmitTray-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tray_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tray_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kit_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kit_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmitTray-request>)))
  "Returns string type for a service object of type '<SubmitTray-request>"
  "nist_gear/SubmitTrayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmitTray-request)))
  "Returns string type for a service object of type 'SubmitTray-request"
  "nist_gear/SubmitTrayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmitTray-request>)))
  "Returns md5sum for a message object of type '<SubmitTray-request>"
  "02ca9d3d33cd5aa38b11d30b6d8538ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmitTray-request)))
  "Returns md5sum for a message object of type 'SubmitTray-request"
  "02ca9d3d33cd5aa38b11d30b6d8538ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmitTray-request>)))
  "Returns full string definition for message of type '<SubmitTray-request>"
  (cl:format cl:nil "string tray_id~%string kit_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmitTray-request)))
  "Returns full string definition for message of type 'SubmitTray-request"
  (cl:format cl:nil "string tray_id~%string kit_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmitTray-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tray_id))
     4 (cl:length (cl:slot-value msg 'kit_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmitTray-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmitTray-request
    (cl:cons ':tray_id (tray_id msg))
    (cl:cons ':kit_type (kit_type msg))
))
;//! \htmlinclude SubmitTray-response.msg.html

(cl:defclass <SubmitTray-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (inspection_result
    :reader inspection_result
    :initarg :inspection_result
    :type cl:float
    :initform 0.0))
)

(cl:defclass SubmitTray-response (<SubmitTray-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmitTray-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmitTray-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<SubmitTray-response> is deprecated: use nist_gear-srv:SubmitTray-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SubmitTray-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:success-val is deprecated.  Use nist_gear-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'inspection_result-val :lambda-list '(m))
(cl:defmethod inspection_result-val ((m <SubmitTray-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:inspection_result-val is deprecated.  Use nist_gear-srv:inspection_result instead.")
  (inspection_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmitTray-response>) ostream)
  "Serializes a message object of type '<SubmitTray-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inspection_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmitTray-response>) istream)
  "Deserializes a message object of type '<SubmitTray-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inspection_result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmitTray-response>)))
  "Returns string type for a service object of type '<SubmitTray-response>"
  "nist_gear/SubmitTrayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmitTray-response)))
  "Returns string type for a service object of type 'SubmitTray-response"
  "nist_gear/SubmitTrayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmitTray-response>)))
  "Returns md5sum for a message object of type '<SubmitTray-response>"
  "02ca9d3d33cd5aa38b11d30b6d8538ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmitTray-response)))
  "Returns md5sum for a message object of type 'SubmitTray-response"
  "02ca9d3d33cd5aa38b11d30b6d8538ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmitTray-response>)))
  "Returns full string definition for message of type '<SubmitTray-response>"
  (cl:format cl:nil "bool success~%float32 inspection_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmitTray-response)))
  "Returns full string definition for message of type 'SubmitTray-response"
  (cl:format cl:nil "bool success~%float32 inspection_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmitTray-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmitTray-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmitTray-response
    (cl:cons ':success (success msg))
    (cl:cons ':inspection_result (inspection_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SubmitTray)))
  'SubmitTray-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SubmitTray)))
  'SubmitTray-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmitTray)))
  "Returns string type for a service object of type '<SubmitTray>"
  "nist_gear/SubmitTray")