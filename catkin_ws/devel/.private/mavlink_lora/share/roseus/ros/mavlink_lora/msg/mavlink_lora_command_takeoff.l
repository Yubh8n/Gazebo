;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_command_takeoff)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_command_takeoff (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_TAKEOFF")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_TAKEOFF"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_command_takeoff.msg.html


(defclass mavlink_lora::mavlink_lora_command_takeoff
  :super ros::object
  :slots (_pitch _yaw_angle _lat _lon _alt ))

(defmethod mavlink_lora::mavlink_lora_command_takeoff
  (:init
   (&key
    ((:pitch __pitch) 0.0)
    ((:yaw_angle __yaw_angle) 0.0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    )
   (send-super :init)
   (setq _pitch (float __pitch))
   (setq _yaw_angle (float __yaw_angle))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   self)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw_angle
   (&optional __yaw_angle)
   (if __yaw_angle (setq _yaw_angle __yaw_angle)) _yaw_angle)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:serialization-length
   ()
   (+
    ;; float64 _pitch
    8
    ;; float64 _yaw_angle
    8
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_command_takeoff :md5sum-) "194827fe444b1623ec4c3832aa38096a")
(setf (get mavlink_lora::mavlink_lora_command_takeoff :datatype-) "mavlink_lora/mavlink_lora_command_takeoff")
(setf (get mavlink_lora::mavlink_lora_command_takeoff :definition-)
      "float64 pitch
float64 yaw_angle
float64 lat
float64 lon
float64 alt
")



(provide :mavlink_lora/mavlink_lora_command_takeoff "194827fe444b1623ec4c3832aa38096a")


