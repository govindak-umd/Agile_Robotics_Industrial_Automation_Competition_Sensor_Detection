; Auto-generated. Do not edit!


(cl:in-package nist_gear-srv)


;//! \htmlinclude SubmitShipment-request.msg.html

(cl:defclass <SubmitShipment-request> (roslisp-msg-protocol:ros-message)
  ((destination_id
    :reader destination_id
    :initarg :destination_id
    :type cl:string
    :initform "")
   (shipment_type
    :reader shipment_type
    :initarg :shipment_type
    :type cl:string
    :initform ""))
)

(cl:defclass SubmitShipment-request (<SubmitShipment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmitShipment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmitShipment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<SubmitShipment-request> is deprecated: use nist_gear-srv:SubmitShipment-request instead.")))

(cl:ensure-generic-function 'destination_id-val :lambda-list '(m))
(cl:defmethod destination_id-val ((m <SubmitShipment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:destination_id-val is deprecated.  Use nist_gear-srv:destination_id instead.")
  (destination_id m))

(cl:ensure-generic-function 'shipment_type-val :lambda-list '(m))
(cl:defmethod shipment_type-val ((m <SubmitShipment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:shipment_type-val is deprecated.  Use nist_gear-srv:shipment_type instead.")
  (shipment_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmitShipment-request>) ostream)
  "Serializes a message object of type '<SubmitShipment-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destination_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destination_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shipment_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shipment_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmitShipment-request>) istream)
  "Deserializes a message object of type '<SubmitShipment-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destination_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destination_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmitShipment-request>)))
  "Returns string type for a service object of type '<SubmitShipment-request>"
  "nist_gear/SubmitShipmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmitShipment-request)))
  "Returns string type for a service object of type 'SubmitShipment-request"
  "nist_gear/SubmitShipmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmitShipment-request>)))
  "Returns md5sum for a message object of type '<SubmitShipment-request>"
  "942098783c59c2efb4c125806191e938")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmitShipment-request)))
  "Returns md5sum for a message object of type 'SubmitShipment-request"
  "942098783c59c2efb4c125806191e938")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmitShipment-request>)))
  "Returns full string definition for message of type '<SubmitShipment-request>"
  (cl:format cl:nil "# ID used to say which tray or AGV this is~%# allowed values are \"1\", or \"2\" to indicate which agv~%# or the name of the tray on the agv~%string destination_id~%# ID used to say which order and shipment this is~%string shipment_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmitShipment-request)))
  "Returns full string definition for message of type 'SubmitShipment-request"
  (cl:format cl:nil "# ID used to say which tray or AGV this is~%# allowed values are \"1\", or \"2\" to indicate which agv~%# or the name of the tray on the agv~%string destination_id~%# ID used to say which order and shipment this is~%string shipment_type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmitShipment-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'destination_id))
     4 (cl:length (cl:slot-value msg 'shipment_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmitShipment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmitShipment-request
    (cl:cons ':destination_id (destination_id msg))
    (cl:cons ':shipment_type (shipment_type msg))
))
;//! \htmlinclude SubmitShipment-response.msg.html

(cl:defclass <SubmitShipment-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SubmitShipment-response (<SubmitShipment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmitShipment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmitShipment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<SubmitShipment-response> is deprecated: use nist_gear-srv:SubmitShipment-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SubmitShipment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:success-val is deprecated.  Use nist_gear-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'inspection_result-val :lambda-list '(m))
(cl:defmethod inspection_result-val ((m <SubmitShipment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:inspection_result-val is deprecated.  Use nist_gear-srv:inspection_result instead.")
  (inspection_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmitShipment-response>) ostream)
  "Serializes a message object of type '<SubmitShipment-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inspection_result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmitShipment-response>) istream)
  "Deserializes a message object of type '<SubmitShipment-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inspection_result) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmitShipment-response>)))
  "Returns string type for a service object of type '<SubmitShipment-response>"
  "nist_gear/SubmitShipmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmitShipment-response)))
  "Returns string type for a service object of type 'SubmitShipment-response"
  "nist_gear/SubmitShipmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmitShipment-response>)))
  "Returns md5sum for a message object of type '<SubmitShipment-response>"
  "942098783c59c2efb4c125806191e938")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmitShipment-response)))
  "Returns md5sum for a message object of type 'SubmitShipment-response"
  "942098783c59c2efb4c125806191e938")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmitShipment-response>)))
  "Returns full string definition for message of type '<SubmitShipment-response>"
  (cl:format cl:nil "bool success~%# The score added by the submitted shipment~%float32 inspection_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmitShipment-response)))
  "Returns full string definition for message of type 'SubmitShipment-response"
  (cl:format cl:nil "bool success~%# The score added by the submitted shipment~%float32 inspection_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmitShipment-response>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmitShipment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmitShipment-response
    (cl:cons ':success (success msg))
    (cl:cons ':inspection_result (inspection_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SubmitShipment)))
  'SubmitShipment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SubmitShipment)))
  'SubmitShipment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmitShipment)))
  "Returns string type for a service object of type '<SubmitShipment>"
  "nist_gear/SubmitShipment")