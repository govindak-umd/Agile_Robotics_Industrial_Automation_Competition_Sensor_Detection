;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::PopulationControl)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'PopulationControl (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::POPULATIONCONTROL")
  (make-package "NIST_GEAR::POPULATIONCONTROL"))
(unless (find-package "NIST_GEAR::POPULATIONCONTROLREQUEST")
  (make-package "NIST_GEAR::POPULATIONCONTROLREQUEST"))
(unless (find-package "NIST_GEAR::POPULATIONCONTROLRESPONSE")
  (make-package "NIST_GEAR::POPULATIONCONTROLRESPONSE"))

(in-package "ROS")





(defclass nist_gear::PopulationControlRequest
  :super ros::object
  :slots (_action ))

(defmethod nist_gear::PopulationControlRequest
  (:init
   (&key
    ((:action __action) "")
    )
   (send-super :init)
   (setq _action (string __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; string _action
    4 (length _action)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action
       (write-long (length _action) s) (princ _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass nist_gear::PopulationControlResponse
  :super ros::object
  :slots (_success ))

(defmethod nist_gear::PopulationControlResponse
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

(defclass nist_gear::PopulationControl
  :super ros::object
  :slots ())

(setf (get nist_gear::PopulationControl :md5sum-) "02058b7d55716526fae62eb68abd6f31")
(setf (get nist_gear::PopulationControl :datatype-) "nist_gear/PopulationControl")
(setf (get nist_gear::PopulationControl :request) nist_gear::PopulationControlRequest)
(setf (get nist_gear::PopulationControl :response) nist_gear::PopulationControlResponse)

(defmethod nist_gear::PopulationControlRequest
  (:response () (instance nist_gear::PopulationControlResponse :init)))

(setf (get nist_gear::PopulationControlRequest :md5sum-) "02058b7d55716526fae62eb68abd6f31")
(setf (get nist_gear::PopulationControlRequest :datatype-) "nist_gear/PopulationControlRequest")
(setf (get nist_gear::PopulationControlRequest :definition-)
      "# Population control

# desired action: \"pause\", \"resume\" or \"restart\"
string action

---
bool success
")

(setf (get nist_gear::PopulationControlResponse :md5sum-) "02058b7d55716526fae62eb68abd6f31")
(setf (get nist_gear::PopulationControlResponse :datatype-) "nist_gear/PopulationControlResponse")
(setf (get nist_gear::PopulationControlResponse :definition-)
      "# Population control

# desired action: \"pause\", \"resume\" or \"restart\"
string action

---
bool success
")



(provide :nist_gear/PopulationControl "02058b7d55716526fae62eb68abd6f31")


