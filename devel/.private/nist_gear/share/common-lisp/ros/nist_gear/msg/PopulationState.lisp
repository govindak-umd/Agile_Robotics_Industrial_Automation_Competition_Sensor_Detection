; Auto-generated. Do not edit!


(cl:in-package nist_gear-msg)


;//! \htmlinclude PopulationState.msg.html

(cl:defclass <PopulationState> (roslisp-msg-protocol:ros-message)
  ((enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PopulationState (<PopulationState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PopulationState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PopulationState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nist_gear-msg:<PopulationState> is deprecated: use nist_gear-msg:PopulationState instead.")))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <PopulationState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nist_gear-msg:enabled-val is deprecated.  Use nist_gear-msg:enabled instead.")
  (enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PopulationState>) ostream)
  "Serializes a message object of type '<PopulationState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PopulationState>) istream)
  "Deserializes a message object of type '<PopulationState>"
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PopulationState>)))
  "Returns string type for a message object of type '<PopulationState>"
  "nist_gear/PopulationState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PopulationState)))
  "Returns string type for a message object of type 'PopulationState"
  "nist_gear/PopulationState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PopulationState>)))
  "Returns md5sum for a message object of type '<PopulationState>"
  "2815464f55ab63684cc1bc38072d0b9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PopulationState)))
  "Returns md5sum for a message object of type 'PopulationState"
  "2815464f55ab63684cc1bc38072d0b9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PopulationState>)))
  "Returns full string definition for message of type '<PopulationState>"
  (cl:format cl:nil "# Population state message~%# This structure contains the state of the object population.~%~%# What is the current state of the plugin (\"running\", \"paused\")?~%bool enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PopulationState)))
  "Returns full string definition for message of type 'PopulationState"
  (cl:format cl:nil "# Population state message~%# This structure contains the state of the object population.~%~%# What is the current state of the plugin (\"running\", \"paused\")?~%bool enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PopulationState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PopulationState>))
  "Converts a ROS message object to a list"
  (cl:list 'PopulationState
    (cl:cons ':enabled (enabled msg))
))
