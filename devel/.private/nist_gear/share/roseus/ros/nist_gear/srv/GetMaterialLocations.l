;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::GetMaterialLocations)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'GetMaterialLocations (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::GETMATERIALLOCATIONS")
  (make-package "NIST_GEAR::GETMATERIALLOCATIONS"))
(unless (find-package "NIST_GEAR::GETMATERIALLOCATIONSREQUEST")
  (make-package "NIST_GEAR::GETMATERIALLOCATIONSREQUEST"))
(unless (find-package "NIST_GEAR::GETMATERIALLOCATIONSRESPONSE")
  (make-package "NIST_GEAR::GETMATERIALLOCATIONSRESPONSE"))

(in-package "ROS")





(defclass nist_gear::GetMaterialLocationsRequest
  :super ros::object
  :slots (_material_type ))

(defmethod nist_gear::GetMaterialLocationsRequest
  (:init
   (&key
    ((:material_type __material_type) "")
    )
   (send-super :init)
   (setq _material_type (string __material_type))
   self)
  (:material_type
   (&optional __material_type)
   (if __material_type (setq _material_type __material_type)) _material_type)
  (:serialization-length
   ()
   (+
    ;; string _material_type
    4 (length _material_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _material_type
       (write-long (length _material_type) s) (princ _material_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _material_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _material_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nist_gear::GetMaterialLocationsResponse
  :super ros::object
  :slots (_storage_units ))

(defmethod nist_gear::GetMaterialLocationsResponse
  (:init
   (&key
    ((:storage_units __storage_units) (let (r) (dotimes (i 0) (push (instance nist_gear::StorageUnit :init) r)) r))
    )
   (send-super :init)
   (setq _storage_units __storage_units)
   self)
  (:storage_units
   (&rest __storage_units)
   (if (keywordp (car __storage_units))
       (send* _storage_units __storage_units)
     (progn
       (if __storage_units (setq _storage_units (car __storage_units)))
       _storage_units)))
  (:serialization-length
   ()
   (+
    ;; nist_gear/StorageUnit[] _storage_units
    (apply #'+ (send-all _storage_units :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; nist_gear/StorageUnit[] _storage_units
     (write-long (length _storage_units) s)
     (dolist (elem _storage_units)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; nist_gear/StorageUnit[] _storage_units
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _storage_units (let (r) (dotimes (i n) (push (instance nist_gear::StorageUnit :init) r)) r))
     (dolist (elem- _storage_units)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass nist_gear::GetMaterialLocations
  :super ros::object
  :slots ())

(setf (get nist_gear::GetMaterialLocations :md5sum-) "cbf263a50360138b80b1bdd46f5ff56f")
(setf (get nist_gear::GetMaterialLocations :datatype-) "nist_gear/GetMaterialLocations")
(setf (get nist_gear::GetMaterialLocations :request) nist_gear::GetMaterialLocationsRequest)
(setf (get nist_gear::GetMaterialLocations :response) nist_gear::GetMaterialLocationsResponse)

(defmethod nist_gear::GetMaterialLocationsRequest
  (:response () (instance nist_gear::GetMaterialLocationsResponse :init)))

(setf (get nist_gear::GetMaterialLocationsRequest :md5sum-) "cbf263a50360138b80b1bdd46f5ff56f")
(setf (get nist_gear::GetMaterialLocationsRequest :datatype-) "nist_gear/GetMaterialLocationsRequest")
(setf (get nist_gear::GetMaterialLocationsRequest :definition-)
      "# Query storage locations for a particular material type.

string material_type  # the type of material for which to query locations

---
StorageUnit[] storage_units  # storage units where the material may be found


================================================================================
MSG: nist_gear/StorageUnit
# StorageUnit message
# This structure contains the high-level information of an abstract storage unit.

# Storage unit ID
string unit_id
")

(setf (get nist_gear::GetMaterialLocationsResponse :md5sum-) "cbf263a50360138b80b1bdd46f5ff56f")
(setf (get nist_gear::GetMaterialLocationsResponse :datatype-) "nist_gear/GetMaterialLocationsResponse")
(setf (get nist_gear::GetMaterialLocationsResponse :definition-)
      "# Query storage locations for a particular material type.

string material_type  # the type of material for which to query locations

---
StorageUnit[] storage_units  # storage units where the material may be found


================================================================================
MSG: nist_gear/StorageUnit
# StorageUnit message
# This structure contains the high-level information of an abstract storage unit.

# Storage unit ID
string unit_id
")



(provide :nist_gear/GetMaterialLocations "cbf263a50360138b80b1bdd46f5ff56f")


