;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::VacuumGripperControl)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'VacuumGripperControl (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::VACUUMGRIPPERCONTROL")
  (make-package "NIST_GEAR::VACUUMGRIPPERCONTROL"))
(unless (find-package "NIST_GEAR::VACUUMGRIPPERCONTROLREQUEST")
  (make-package "NIST_GEAR::VACUUMGRIPPERCONTROLREQUEST"))
(unless (find-package "NIST_GEAR::VACUUMGRIPPERCONTROLRESPONSE")
  (make-package "NIST_GEAR::VACUUMGRIPPERCONTROLRESPONSE"))

(in-package "ROS")





(defclass nist_gear::VacuumGripperControlRequest
  :super ros::object
  :slots (_enable ))

(defmethod nist_gear::VacuumGripperControlRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass nist_gear::VacuumGripperControlResponse
  :super ros::object
  :slots (_success ))

(defmethod nist_gear::VacuumGripperControlResponse
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

(defclass nist_gear::VacuumGripperControl
  :super ros::object
  :slots ())

(setf (get nist_gear::VacuumGripperControl :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get nist_gear::VacuumGripperControl :datatype-) "nist_gear/VacuumGripperControl")
(setf (get nist_gear::VacuumGripperControl :request) nist_gear::VacuumGripperControlRequest)
(setf (get nist_gear::VacuumGripperControl :response) nist_gear::VacuumGripperControlResponse)

(defmethod nist_gear::VacuumGripperControlRequest
  (:response () (instance nist_gear::VacuumGripperControlResponse :init)))

(setf (get nist_gear::VacuumGripperControlRequest :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get nist_gear::VacuumGripperControlRequest :datatype-) "nist_gear/VacuumGripperControlRequest")
(setf (get nist_gear::VacuumGripperControlRequest :definition-)
      "# Vacuum gripper control

# Enable/Disable gripper suction
bool enable

---
bool success

")

(setf (get nist_gear::VacuumGripperControlResponse :md5sum-) "6a0b406242562fc416b2c9c8a3efb051")
(setf (get nist_gear::VacuumGripperControlResponse :datatype-) "nist_gear/VacuumGripperControlResponse")
(setf (get nist_gear::VacuumGripperControlResponse :definition-)
      "# Vacuum gripper control

# Enable/Disable gripper suction
bool enable

---
bool success

")



(provide :nist_gear/VacuumGripperControl "6a0b406242562fc416b2c9c8a3efb051")


