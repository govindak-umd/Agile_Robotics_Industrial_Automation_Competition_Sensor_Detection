;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::Shipment)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'Shipment (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::SHIPMENT")
  (make-package "NIST_GEAR::SHIPMENT"))

(in-package "ROS")
;;//! \htmlinclude Shipment.msg.html


(defclass nist_gear::Shipment
  :super ros::object
  :slots (_shipment_type _agv_id _products ))

(defmethod nist_gear::Shipment
  (:init
   (&key
    ((:shipment_type __shipment_type) "")
    ((:agv_id __agv_id) "")
    ((:products __products) (let (r) (dotimes (i 0) (push (instance nist_gear::Product :init) r)) r))
    )
   (send-super :init)
   (setq _shipment_type (string __shipment_type))
   (setq _agv_id (string __agv_id))
   (setq _products __products)
   self)
  (:shipment_type
   (&optional __shipment_type)
   (if __shipment_type (setq _shipment_type __shipment_type)) _shipment_type)
  (:agv_id
   (&optional __agv_id)
   (if __agv_id (setq _agv_id __agv_id)) _agv_id)
  (:products
   (&rest __products)
   (if (keywordp (car __products))
       (send* _products __products)
     (progn
       (if __products (setq _products (car __products)))
       _products)))
  (:serialization-length
   ()
   (+
    ;; string _shipment_type
    4 (length _shipment_type)
    ;; string _agv_id
    4 (length _agv_id)
    ;; nist_gear/Product[] _products
    (apply #'+ (send-all _products :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _shipment_type
       (write-long (length _shipment_type) s) (princ _shipment_type s)
     ;; string _agv_id
       (write-long (length _agv_id) s) (princ _agv_id s)
     ;; nist_gear/Product[] _products
     (write-long (length _products) s)
     (dolist (elem _products)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _shipment_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shipment_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _agv_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _agv_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nist_gear/Product[] _products
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _products (let (r) (dotimes (i n) (push (instance nist_gear::Product :init) r)) r))
     (dolist (elem- _products)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nist_gear::Shipment :md5sum-) "484213c903d81e9a6637b4075260ff0a")
(setf (get nist_gear::Shipment :datatype-) "nist_gear/Shipment")
(setf (get nist_gear::Shipment :definition-)
      "# Shipment message
# This structure contains the information of shipment.

# The type of shipment
string shipment_type

# ID used to say which AGV the shipment must be delivered to
# Possible values are \"agv1\", \"agv2\", or \"any\"
string agv_id

# Collection of products
Product[] products

================================================================================
MSG: nist_gear/Product
# Product message
# This structure contains the information of an product contained in a shipment.

# Product type
string type

# Target pose
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :nist_gear/Shipment "484213c903d81e9a6637b4075260ff0a")


