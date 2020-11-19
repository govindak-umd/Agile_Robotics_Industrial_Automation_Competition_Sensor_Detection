;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::SubmitShipment)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'SubmitShipment (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::SUBMITSHIPMENT")
  (make-package "NIST_GEAR::SUBMITSHIPMENT"))
(unless (find-package "NIST_GEAR::SUBMITSHIPMENTREQUEST")
  (make-package "NIST_GEAR::SUBMITSHIPMENTREQUEST"))
(unless (find-package "NIST_GEAR::SUBMITSHIPMENTRESPONSE")
  (make-package "NIST_GEAR::SUBMITSHIPMENTRESPONSE"))

(in-package "ROS")





(defclass nist_gear::SubmitShipmentRequest
  :super ros::object
  :slots (_destination_id _shipment_type ))

(defmethod nist_gear::SubmitShipmentRequest
  (:init
   (&key
    ((:destination_id __destination_id) "")
    ((:shipment_type __shipment_type) "")
    )
   (send-super :init)
   (setq _destination_id (string __destination_id))
   (setq _shipment_type (string __shipment_type))
   self)
  (:destination_id
   (&optional __destination_id)
   (if __destination_id (setq _destination_id __destination_id)) _destination_id)
  (:shipment_type
   (&optional __shipment_type)
   (if __shipment_type (setq _shipment_type __shipment_type)) _shipment_type)
  (:serialization-length
   ()
   (+
    ;; string _destination_id
    4 (length _destination_id)
    ;; string _shipment_type
    4 (length _shipment_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _destination_id
       (write-long (length _destination_id) s) (princ _destination_id s)
     ;; string _shipment_type
       (write-long (length _shipment_type) s) (princ _shipment_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _destination_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _shipment_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shipment_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nist_gear::SubmitShipmentResponse
  :super ros::object
  :slots (_success _inspection_result ))

(defmethod nist_gear::SubmitShipmentResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:inspection_result __inspection_result) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _inspection_result (float __inspection_result))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:inspection_result
   (&optional __inspection_result)
   (if __inspection_result (setq _inspection_result __inspection_result)) _inspection_result)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32 _inspection_result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32 _inspection_result
       (sys::poke _inspection_result (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _inspection_result
     (setq _inspection_result (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass nist_gear::SubmitShipment
  :super ros::object
  :slots ())

(setf (get nist_gear::SubmitShipment :md5sum-) "942098783c59c2efb4c125806191e938")
(setf (get nist_gear::SubmitShipment :datatype-) "nist_gear/SubmitShipment")
(setf (get nist_gear::SubmitShipment :request) nist_gear::SubmitShipmentRequest)
(setf (get nist_gear::SubmitShipment :response) nist_gear::SubmitShipmentResponse)

(defmethod nist_gear::SubmitShipmentRequest
  (:response () (instance nist_gear::SubmitShipmentResponse :init)))

(setf (get nist_gear::SubmitShipmentRequest :md5sum-) "942098783c59c2efb4c125806191e938")
(setf (get nist_gear::SubmitShipmentRequest :datatype-) "nist_gear/SubmitShipmentRequest")
(setf (get nist_gear::SubmitShipmentRequest :definition-)
      "# ID used to say which tray or AGV this is
# allowed values are \"1\", or \"2\" to indicate which agv
# or the name of the tray on the agv
string destination_id
# ID used to say which order and shipment this is
string shipment_type

---
bool success
# The score added by the submitted shipment
float32 inspection_result

")

(setf (get nist_gear::SubmitShipmentResponse :md5sum-) "942098783c59c2efb4c125806191e938")
(setf (get nist_gear::SubmitShipmentResponse :datatype-) "nist_gear/SubmitShipmentResponse")
(setf (get nist_gear::SubmitShipmentResponse :definition-)
      "# ID used to say which tray or AGV this is
# allowed values are \"1\", or \"2\" to indicate which agv
# or the name of the tray on the agv
string destination_id
# ID used to say which order and shipment this is
string shipment_type

---
bool success
# The score added by the submitted shipment
float32 inspection_result

")



(provide :nist_gear/SubmitShipment "942098783c59c2efb4c125806191e938")


