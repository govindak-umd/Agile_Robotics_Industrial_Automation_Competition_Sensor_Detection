;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::Order)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'Order (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::ORDER")
  (make-package "NIST_GEAR::ORDER"))

(in-package "ROS")
;;//! \htmlinclude Order.msg.html


(defclass nist_gear::Order
  :super ros::object
  :slots (_order_id _shipments ))

(defmethod nist_gear::Order
  (:init
   (&key
    ((:order_id __order_id) "")
    ((:shipments __shipments) (let (r) (dotimes (i 0) (push (instance nist_gear::Shipment :init) r)) r))
    )
   (send-super :init)
   (setq _order_id (string __order_id))
   (setq _shipments __shipments)
   self)
  (:order_id
   (&optional __order_id)
   (if __order_id (setq _order_id __order_id)) _order_id)
  (:shipments
   (&rest __shipments)
   (if (keywordp (car __shipments))
       (send* _shipments __shipments)
     (progn
       (if __shipments (setq _shipments (car __shipments)))
       _shipments)))
  (:serialization-length
   ()
   (+
    ;; string _order_id
    4 (length _order_id)
    ;; nist_gear/Shipment[] _shipments
    (apply #'+ (send-all _shipments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _order_id
       (write-long (length _order_id) s) (princ _order_id s)
     ;; nist_gear/Shipment[] _shipments
     (write-long (length _shipments) s)
     (dolist (elem _shipments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _order_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _order_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; nist_gear/Shipment[] _shipments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shipments (let (r) (dotimes (i n) (push (instance nist_gear::Shipment :init) r)) r))
     (dolist (elem- _shipments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get nist_gear::Order :md5sum-) "37a37d6e765c675eee7c113bc580da11")
(setf (get nist_gear::Order :datatype-) "nist_gear/Order")
(setf (get nist_gear::Order :definition-)
      "# Order message
# This structure contains the information of an order.

# ID of the order
string order_id

# Collection of shipments
Shipment[] shipments

================================================================================
MSG: nist_gear/Shipment
# Shipment message
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



(provide :nist_gear/Order "37a37d6e765c675eee7c113bc580da11")


