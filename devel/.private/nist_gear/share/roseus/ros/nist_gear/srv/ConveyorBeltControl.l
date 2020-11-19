;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::ConveyorBeltControl)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'ConveyorBeltControl (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::CONVEYORBELTCONTROL")
  (make-package "NIST_GEAR::CONVEYORBELTCONTROL"))
(unless (find-package "NIST_GEAR::CONVEYORBELTCONTROLREQUEST")
  (make-package "NIST_GEAR::CONVEYORBELTCONTROLREQUEST"))
(unless (find-package "NIST_GEAR::CONVEYORBELTCONTROLRESPONSE")
  (make-package "NIST_GEAR::CONVEYORBELTCONTROLRESPONSE"))

(in-package "ROS")





(defclass nist_gear::ConveyorBeltControlRequest
  :super ros::object
  :slots (_power ))

(defmethod nist_gear::ConveyorBeltControlRequest
  (:init
   (&key
    ((:power __power) 0.0)
    )
   (send-super :init)
   (setq _power (float __power))
   self)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; float64 _power
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _power
       (sys::poke _power (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _power
     (setq _power (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass nist_gear::ConveyorBeltControlResponse
  :super ros::object
  :slots (_success ))

(defmethod nist_gear::ConveyorBeltControlResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nist_gear::ConveyorBeltControl
  :super ros::object
  :slots ())

(setf (get nist_gear::ConveyorBeltControl :md5sum-) "8b0e8e2d213d4fc4d0fcb5152aec2d9d")
(setf (get nist_gear::ConveyorBeltControl :datatype-) "nist_gear/ConveyorBeltControl")
(setf (get nist_gear::ConveyorBeltControl :request) nist_gear::ConveyorBeltControlRequest)
(setf (get nist_gear::ConveyorBeltControl :response) nist_gear::ConveyorBeltControlResponse)

(defmethod nist_gear::ConveyorBeltControlRequest
  (:response () (instance nist_gear::ConveyorBeltControlResponse :init)))

(setf (get nist_gear::ConveyorBeltControlRequest :md5sum-) "8b0e8e2d213d4fc4d0fcb5152aec2d9d")
(setf (get nist_gear::ConveyorBeltControlRequest :datatype-) "nist_gear/ConveyorBeltControlRequest")
(setf (get nist_gear::ConveyorBeltControlRequest :definition-)
      "# Conveyor belt control

# desired conveyor belt power
float64 power

---
bool success

")

(setf (get nist_gear::ConveyorBeltControlResponse :md5sum-) "8b0e8e2d213d4fc4d0fcb5152aec2d9d")
(setf (get nist_gear::ConveyorBeltControlResponse :datatype-) "nist_gear/ConveyorBeltControlResponse")
(setf (get nist_gear::ConveyorBeltControlResponse :definition-)
      "# Conveyor belt control

# desired conveyor belt power
float64 power

---
bool success

")



(provide :nist_gear/ConveyorBeltControl "8b0e8e2d213d4fc4d0fcb5152aec2d9d")


