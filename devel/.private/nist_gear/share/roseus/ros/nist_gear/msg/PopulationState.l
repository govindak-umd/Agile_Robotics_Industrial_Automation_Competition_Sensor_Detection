;; Auto-generated. Do not edit!


(when (boundp 'nist_gear::PopulationState)
  (if (not (find-package "NIST_GEAR"))
    (make-package "NIST_GEAR"))
  (shadow 'PopulationState (find-package "NIST_GEAR")))
(unless (find-package "NIST_GEAR::POPULATIONSTATE")
  (make-package "NIST_GEAR::POPULATIONSTATE"))

(in-package "ROS")
;;//! \htmlinclude PopulationState.msg.html


(defclass nist_gear::PopulationState
  :super ros::object
  :slots (_enabled ))

(defmethod nist_gear::PopulationState
  (:init
   (&key
    ((:enabled __enabled) nil)
    )
   (send-super :init)
   (setq _enabled __enabled)
   self)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:serialization-length
   ()
   (+
    ;; bool _enabled
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get nist_gear::PopulationState :md5sum-) "2815464f55ab63684cc1bc38072d0b9b")
(setf (get nist_gear::PopulationState :datatype-) "nist_gear/PopulationState")
(setf (get nist_gear::PopulationState :definition-)
      "# Population state message
# This structure contains the state of the object population.

# What is the current state of the plugin (\"running\", \"paused\")?
bool enabled

")



(provide :nist_gear/PopulationState "2815464f55ab63684cc1bc38072d0b9b")


