;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::DroneControl)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'DroneControl (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::DRONECONTROL")
  (make-package "NIST_GEAR::DRONECONTROL"))
(unless (find-package "NIST_GEAR::DRONECONTROLREQUEST")
  (make-package "NIST_GEAR::DRONECONTROLREQUEST"))
(unless (find-package "NIST_GEAR::DRONECONTROLRESPONSE")
  (make-package "NIST_GEAR::DRONECONTROLRESPONSE"))

(in-package "ROS")





(defclass nist_gear::DroneControlRequest
  :super ros::object
  :slots (_shipment_type ))

(defmethod nist_gear::DroneControlRequest
  (:init
   (&key
    ((:shipment_type __shipment_type) "")
    )
   (send-super :init)
   (setq _shipment_type (string __shipment_type))
   self)
  (:shipment_type
   (&optional __shipment_type)
   (if __shipment_type (setq _shipment_type __shipment_type)) _shipment_type)
  (:serialization-length
   ()
   (+
    ;; string _shipment_type
    4 (length _shipment_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _shipment_type
       (write-long (length _shipment_type) s) (princ _shipment_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shipment_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shipment_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nist_gear::DroneControlResponse
  :super ros::object
  :slots (_success ))

(defmethod nist_gear::DroneControlResponse
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

(defclass nist_gear::DroneControl
  :super ros::object
  :slots ())

(setf (get nist_gear::DroneControl :md5sum-) "5df8ff5f4552660de2945f5478b39f6b")
(setf (get nist_gear::DroneControl :datatype-) "nist_gear/DroneControl")
(setf (get nist_gear::DroneControl :request) nist_gear::DroneControlRequest)
(setf (get nist_gear::DroneControl :response) nist_gear::DroneControlResponse)

(defmethod nist_gear::DroneControlRequest
  (:response () (instance nist_gear::DroneControlResponse :init)))

(setf (get nist_gear::DroneControlRequest :md5sum-) "5df8ff5f4552660de2945f5478b39f6b")
(setf (get nist_gear::DroneControlRequest :datatype-) "nist_gear/DroneControlRequest")
(setf (get nist_gear::DroneControlRequest :definition-)
      "# Drone Control

string shipment_type

---
bool success

")

(setf (get nist_gear::DroneControlResponse :md5sum-) "5df8ff5f4552660de2945f5478b39f6b")
(setf (get nist_gear::DroneControlResponse :datatype-) "nist_gear/DroneControlResponse")
(setf (get nist_gear::DroneControlResponse :definition-)
      "# Drone Control

string shipment_type

---
bool success

")



(provide :nist_gear/DroneControl "5df8ff5f4552660de2945f5478b39f6b")


