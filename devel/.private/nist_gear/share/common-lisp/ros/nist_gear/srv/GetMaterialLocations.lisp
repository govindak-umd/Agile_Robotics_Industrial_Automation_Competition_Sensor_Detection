; Auto-generated. Do not edit!


(cl:in-package nist_gear-srv)


;//! \htmlinclude GetMaterialLocations-request.msg.html

(cl:defclass <GetMaterialLocations-request> (roslisp-msg-protocol:ros-message)
  ((material_type
    :reader material_type
    :initarg :material_type
    :type cl:string
    :initform ""))
)

(cl:defclass GetMaterialLocations-request (<GetMaterialLocations-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMaterialLocations-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMaterialLocations-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<GetMaterialLocations-request> is deprecated: use nist_gear-srv:GetMaterialLocations-request instead.")))

(cl:ensure-generic-function 'material_type-val :lambda-list '(m))
(cl:defmethod material_type-val ((m <GetMaterialLocations-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:material_type-val is deprecated.  Use nist_gear-srv:material_type instead.")
  (material_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMaterialLocations-request>) ostream)
  "Serializes a message object of type '<GetMaterialLocations-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'material_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'material_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMaterialLocations-request>) istream)
  "Deserializes a message object of type '<GetMaterialLocations-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'material_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'material_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMaterialLocations-request>)))
  "Returns string type for a service object of type '<GetMaterialLocations-request>"
  "nist_gear/GetMaterialLocationsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMaterialLocations-request)))
  "Returns string type for a service object of type 'GetMaterialLocations-request"
  "nist_gear/GetMaterialLocationsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMaterialLocations-request>)))
  "Returns md5sum for a message object of type '<GetMaterialLocations-request>"
  "cbf263a50360138b80b1bdd46f5ff56f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMaterialLocations-request)))
  "Returns md5sum for a message object of type 'GetMaterialLocations-request"
  "cbf263a50360138b80b1bdd46f5ff56f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMaterialLocations-request>)))
  "Returns full string definition for message of type '<GetMaterialLocations-request>"
  (cl:format cl:nil "# Query storage locations for a particular material type.~%~%string material_type  # the type of material for which to query locations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMaterialLocations-request)))
  "Returns full string definition for message of type 'GetMaterialLocations-request"
  (cl:format cl:nil "# Query storage locations for a particular material type.~%~%string material_type  # the type of material for which to query locations~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMaterialLocations-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'material_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMaterialLocations-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMaterialLocations-request
    (cl:cons ':material_type (material_type msg))
))
;//! \htmlinclude GetMaterialLocations-response.msg.html

(cl:defclass <GetMaterialLocations-response> (roslisp-msg-protocol:ros-message)
  ((storage_units
    :reader storage_units
    :initarg :storage_units
    :type (cl:vector nist_gear-msg:StorageUnit)
   :initform (cl:make-array 0 :element-type 'nist_gear-msg:StorageUnit :initial-element (cl:make-instance 'nist_gear-msg:StorageUnit))))
)

(cl:defclass GetMaterialLocations-response (<GetMaterialLocations-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMaterialLocations-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMaterialLocations-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-srv:<GetMaterialLocations-response> is deprecated: use nist_gear-srv:GetMaterialLocations-response instead.")))

(cl:ensure-generic-function 'storage_units-val :lambda-list '(m))
(cl:defmethod storage_units-val ((m <GetMaterialLocations-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-srv:storage_units-val is deprecated.  Use nist_gear-srv:storage_units instead.")
  (storage_units m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMaterialLocations-response>) ostream)
  "Serializes a message object of type '<GetMaterialLocations-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'storage_units))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'storage_units))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMaterialLocations-response>) istream)
  "Deserializes a message object of type '<GetMaterialLocations-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'storage_units) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'storage_units)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'nist_gear-msg:StorageUnit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMaterialLocations-response>)))
  "Returns string type for a service object of type '<GetMaterialLocations-response>"
  "nist_gear/GetMaterialLocationsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMaterialLocations-response)))
  "Returns string type for a service object of type 'GetMaterialLocations-response"
  "nist_gear/GetMaterialLocationsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMaterialLocations-response>)))
  "Returns md5sum for a message object of type '<GetMaterialLocations-response>"
  "cbf263a50360138b80b1bdd46f5ff56f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMaterialLocations-response)))
  "Returns md5sum for a message object of type 'GetMaterialLocations-response"
  "cbf263a50360138b80b1bdd46f5ff56f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMaterialLocations-response>)))
  "Returns full string definition for message of type '<GetMaterialLocations-response>"
  (cl:format cl:nil "StorageUnit[] storage_units  # storage units where the material may be found~%~%~%================================================================================~%MSG: nist_gear/StorageUnit~%# StorageUnit message~%# This structure contains the high-level information of an abstract storage unit.~%~%# Storage unit ID~%string unit_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMaterialLocations-response)))
  "Returns full string definition for message of type 'GetMaterialLocations-response"
  (cl:format cl:nil "StorageUnit[] storage_units  # storage units where the material may be found~%~%~%================================================================================~%MSG: nist_gear/StorageUnit~%# StorageUnit message~%# This structure contains the high-level information of an abstract storage unit.~%~%# Storage unit ID~%string unit_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMaterialLocations-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'storage_units) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMaterialLocations-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMaterialLocations-response
    (cl:cons ':storage_units (storage_units msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMaterialLocations)))
  'GetMaterialLocations-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMaterialLocations)))
  'GetMaterialLocations-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMaterialLocations)))
  "Returns string type for a service object of type '<GetMaterialLocations>"
  "nist_gear/GetMaterialLocations")