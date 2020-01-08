;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_command_land)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_command_land (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_LAND")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_LAND"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_command_land.msg.html


(defclass mavlink_lora::mavlink_lora_command_land
  :super ros::object
  :slots (_abort_alt _precision_land_mode _yaw_angle _lat _lon _altitude ))

(defmethod mavlink_lora::mavlink_lora_command_land
  (:init
   (&key
    ((:abort_alt __abort_alt) 0.0)
    ((:precision_land_mode __precision_land_mode) 0.0)
    ((:yaw_angle __yaw_angle) 0.0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _abort_alt (float __abort_alt))
   (setq _precision_land_mode (float __precision_land_mode))
   (setq _yaw_angle (float __yaw_angle))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _altitude (float __altitude))
   self)
  (:abort_alt
   (&optional __abort_alt)
   (if __abort_alt (setq _abort_alt __abort_alt)) _abort_alt)
  (:precision_land_mode
   (&optional __precision_land_mode)
   (if __precision_land_mode (setq _precision_land_mode __precision_land_mode)) _precision_land_mode)
  (:yaw_angle
   (&optional __yaw_angle)
   (if __yaw_angle (setq _yaw_angle __yaw_angle)) _yaw_angle)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; float64 _abort_alt
    8
    ;; float64 _precision_land_mode
    8
    ;; float64 _yaw_angle
    8
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _altitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _abort_alt
       (sys::poke _abort_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _precision_land_mode
       (sys::poke _precision_land_mode (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _abort_alt
     (setq _abort_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _precision_land_mode
     (setq _precision_land_mode (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_command_land :md5sum-) "f2d410eebafe4da4e351aa9c74e4140f")
(setf (get mavlink_lora::mavlink_lora_command_land :datatype-) "mavlink_lora/mavlink_lora_command_land")
(setf (get mavlink_lora::mavlink_lora_command_land :definition-)
      "float64 abort_alt
float64 precision_land_mode
float64 yaw_angle
float64 lat
float64 lon
float64 altitude
")



(provide :mavlink_lora/mavlink_lora_command_land "f2d410eebafe4da4e351aa9c74e4140f")


