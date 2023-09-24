;; Auto-generated. Do not edit!


(when (boundp 'turtle_control::kf)
  (if (not (find-package "TURTLE_CONTROL"))
    (make-package "TURTLE_CONTROL"))
  (shadow 'kf (find-package "TURTLE_CONTROL")))
(unless (find-package "TURTLE_CONTROL::KF")
  (make-package "TURTLE_CONTROL::KF"))

(in-package "ROS")
;;//! \htmlinclude kf.msg.html


(defclass turtle_control::kf
  :super ros::object
  :slots (_x_kf _x_odom _x_sensor _x_sensor_var ))

(defmethod turtle_control::kf
  (:init
   (&key
    ((:x_kf __x_kf) 0.0)
    ((:x_odom __x_odom) 0.0)
    ((:x_sensor __x_sensor) 0.0)
    ((:x_sensor_var __x_sensor_var) 0.0)
    )
   (send-super :init)
   (setq _x_kf (float __x_kf))
   (setq _x_odom (float __x_odom))
   (setq _x_sensor (float __x_sensor))
   (setq _x_sensor_var (float __x_sensor_var))
   self)
  (:x_kf
   (&optional __x_kf)
   (if __x_kf (setq _x_kf __x_kf)) _x_kf)
  (:x_odom
   (&optional __x_odom)
   (if __x_odom (setq _x_odom __x_odom)) _x_odom)
  (:x_sensor
   (&optional __x_sensor)
   (if __x_sensor (setq _x_sensor __x_sensor)) _x_sensor)
  (:x_sensor_var
   (&optional __x_sensor_var)
   (if __x_sensor_var (setq _x_sensor_var __x_sensor_var)) _x_sensor_var)
  (:serialization-length
   ()
   (+
    ;; float32 _x_kf
    4
    ;; float32 _x_odom
    4
    ;; float32 _x_sensor
    4
    ;; float32 _x_sensor_var
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x_kf
       (sys::poke _x_kf (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_odom
       (sys::poke _x_odom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_sensor
       (sys::poke _x_sensor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_sensor_var
       (sys::poke _x_sensor_var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x_kf
     (setq _x_kf (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_odom
     (setq _x_odom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_sensor
     (setq _x_sensor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_sensor_var
     (setq _x_sensor_var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtle_control::kf :md5sum-) "0d726d72060def9671484e9bd7b7c259")
(setf (get turtle_control::kf :datatype-) "turtle_control/kf")
(setf (get turtle_control::kf :definition-)
      "float32 x_kf
float32 x_odom
float32 x_sensor
float32 x_sensor_var
")



(provide :turtle_control/kf "0d726d72060def9671484e9bd7b7c259")


