;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::StorageUnit)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'StorageUnit (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::STORAGEUNIT")
  (make-package "NIST_GEAR::STORAGEUNIT"))

(in-package "ROS")
;;//! \htmlinclude StorageUnit.msg.html


(defclass nist_gear::StorageUnit
  :super ros::object
  :slots (_unit_id ))

(defmethod nist_gear::StorageUnit
  (:init
   (&key
    ((:unit_id __unit_id) "")
    )
   (send-super :init)
   (setq _unit_id (string __unit_id))
   self)
  (:unit_id
   (&optional __unit_id)
   (if __unit_id (setq _unit_id __unit_id)) _unit_id)
  (:serialization-length
   ()
   (+
    ;; string _unit_id
    4 (length _unit_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _unit_id
       (write-long (length _unit_id) s) (princ _unit_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _unit_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get nist_gear::StorageUnit :md5sum-) "65485572bdec5ec0a1af089b1cfe78c7")
(setf (get nist_gear::StorageUnit :datatype-) "nist_gear/StorageUnit")
(setf (get nist_gear::StorageUnit :definition-)
      "# StorageUnit message
# This structure contains the high-level information of an abstract storage unit.

# Storage unit ID
string unit_id

")



(provide :nist_gear/StorageUnit "65485572bdec5ec0a1af089b1cfe78c7")


