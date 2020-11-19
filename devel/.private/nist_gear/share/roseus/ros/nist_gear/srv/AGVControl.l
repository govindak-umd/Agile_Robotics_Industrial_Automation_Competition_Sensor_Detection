;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::AGVControl)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'AGVControl (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::AGVCONTROL")
  (make-package "NIST_GEAR::AGVCONTROL"))
(unless (find-package "NIST_GEAR::AGVCONTROLREQUEST")
  (make-package "NIST_GEAR::AGVCONTROLREQUEST"))
(unless (find-package "NIST_GEAR::AGVCONTROLRESPONSE")
  (make-package "NIST_GEAR::AGVCONTROLRESPONSE"))

(in-package "ROS")





(defclass nist_gear::AGVControlRequest
  :super ros::object
  :slots (_shipment_type ))

(defmethod nist_gear::AGVControlRequest
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

(defclass nist_gear::AGVControlResponse
  :super ros::object
  :slots (_success _message ))

(defmethod nist_gear::AGVControlResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nist_gear::AGVControl
  :super ros::object
  :slots ())

(setf (get nist_gear::AGVControl :md5sum-) "c005482ab2942dacef2630ed2f58c3b3")
(setf (get nist_gear::AGVControl :datatype-) "nist_gear/AGVControl")
(setf (get nist_gear::AGVControl :request) nist_gear::AGVControlRequest)
(setf (get nist_gear::AGVControl :response) nist_gear::AGVControlResponse)

(defmethod nist_gear::AGVControlRequest
  (:response () (instance nist_gear::AGVControlResponse :init)))

(setf (get nist_gear::AGVControlRequest :md5sum-) "c005482ab2942dacef2630ed2f58c3b3")
(setf (get nist_gear::AGVControlRequest :datatype-) "nist_gear/AGVControlRequest")
(setf (get nist_gear::AGVControlRequest :definition-)
      "# AGV Control

# A name used to identify the shipment being submitted
# This name was included in the shipment in the order
string shipment_type

---
bool success
string message

")

(setf (get nist_gear::AGVControlResponse :md5sum-) "c005482ab2942dacef2630ed2f58c3b3")
(setf (get nist_gear::AGVControlResponse :datatype-) "nist_gear/AGVControlResponse")
(setf (get nist_gear::AGVControlResponse :definition-)
      "# AGV Control

# A name used to identify the shipment being submitted
# This name was included in the shipment in the order
string shipment_type

---
bool success
string message

")



(provide :nist_gear/AGVControl "c005482ab2942dacef2630ed2f58c3b3")


