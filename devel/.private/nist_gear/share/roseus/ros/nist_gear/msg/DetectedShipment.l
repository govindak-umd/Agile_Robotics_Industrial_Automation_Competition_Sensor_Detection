;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::DetectedShipment)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'DetectedShipment (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::DETECTEDSHIPMENT")
  (make-package "NIST_GEAR::DETECTEDSHIPMENT"))

(in-package "ROS")
;;//! \htmlinclude DetectedShipment.msg.html


(defclass nist_gear::DetectedShipment
  :super ros::object
  :slots (_destination_id _products ))

(defmethod nist_gear::DetectedShipment
  (:init
   (&key
    ((:destination_id __destination_id) "")
    ((:products __products) (let (r) (dotimes (i 0) (push (instance nist_gear::DetectedProduct :init) r)) r))
    )
   (send-super :init)
   (setq _destination_id (string __destination_id))
   (setq _products __products)
   self)
  (:destination_id
   (&optional __destination_id)
   (if __destination_id (setq _destination_id __destination_id)) _destination_id)
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
    ;; string _destination_id
    4 (length _destination_id)
    ;; nist_gear/DetectedProduct[] _products
    (apply #'+ (send-all _products :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _destination_id
       (write-long (length _destination_id) s) (princ _destination_id s)
     ;; nist_gear/DetectedProduct[] _products
     (write-long (length _products) s)
     (dolist (elem _products)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _destination_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nist_gear/DetectedProduct[] _products
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _products (let (r) (dotimes (i n) (push (instance nist_gear::DetectedProduct :init) r)) r))
     (dolist (elem- _products)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nist_gear::DetectedShipment :md5sum-) "aa636304139751ae787eeb3a3793e615")
(setf (get nist_gear::DetectedShipment :datatype-) "nist_gear/DetectedShipment")
(setf (get nist_gear::DetectedShipment :definition-)
      "# Shipment contents message
# This structure contains the information about a shipment being submitted

# The ID of the shipping_box or tray the shipment was detected in
string destination_id

# Collection of products
DetectedProduct[] products

================================================================================
MSG: nist_gear/DetectedProduct
# DetectedProduct message
# This structure contains the information of a detected product.

# Product type
string type

# Whether or not the product is faulty
bool is_faulty

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



(provide :nist_gear/DetectedShipment "aa636304139751ae787eeb3a3793e615")


