;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::DetectedProduct)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'DetectedProduct (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::DETECTEDPRODUCT")
  (make-package "NIST_GEAR::DETECTEDPRODUCT"))

(in-package "ROS")
;;//! \htmlinclude DetectedProduct.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass nist_gear::DetectedProduct
  :super ros::object
  :slots (_type _is_faulty _pose ))

(defmethod nist_gear::DetectedProduct
  (:init
   (&key
    ((:type __type) "")
    ((:is_faulty __is_faulty) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _is_faulty __is_faulty)
   (setq _pose __pose)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:is_faulty
   (&optional __is_faulty)
   (if __is_faulty (setq _is_faulty __is_faulty)) _is_faulty)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; bool _is_faulty
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; bool _is_faulty
       (if _is_faulty (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_faulty
     (setq _is_faulty (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get nist_gear::DetectedProduct :md5sum-) "c1078dfbc537fe0a742246656582af4f")
(setf (get nist_gear::DetectedProduct :datatype-) "nist_gear/DetectedProduct")
(setf (get nist_gear::DetectedProduct :definition-)
      "# DetectedProduct message
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



(provide :nist_gear/DetectedProduct "c1078dfbc537fe0a742246656582af4f")


