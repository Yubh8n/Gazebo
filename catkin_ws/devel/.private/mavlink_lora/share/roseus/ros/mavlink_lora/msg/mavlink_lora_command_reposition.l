;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_command_reposition)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_command_reposition (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_REPOSITION")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_REPOSITION"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_command_reposition.msg.html


(defclass mavlink_lora::mavlink_lora_command_reposition
  :super ros::object
  :slots (_ground_speed _yaw_heading _lat _lon _alt ))

(defmethod mavlink_lora::mavlink_lora_command_reposition
  (:init
   (&key
    ((:ground_speed __ground_speed) 0.0)
    ((:yaw_heading __yaw_heading) 0.0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    )
   (send-super :init)
   (setq _ground_speed (float __ground_speed))
   (setq _yaw_heading (float __yaw_heading))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   self)
  (:ground_speed
   (&optional __ground_speed)
   (if __ground_speed (setq _ground_speed __ground_speed)) _ground_speed)
  (:yaw_heading
   (&optional __yaw_heading)
   (if __yaw_heading (setq _yaw_heading __yaw_heading)) _yaw_heading)
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
    ;; float64 _ground_speed
    8
    ;; float64 _yaw_heading
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
     ;; float64 _ground_speed
       (sys::poke _ground_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_heading
       (sys::poke _yaw_heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _ground_speed
     (setq _ground_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_heading
     (setq _yaw_heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_command_reposition :md5sum-) "79563d72b78866c926c96f14f749ab8e")
(setf (get mavlink_lora::mavlink_lora_command_reposition :datatype-) "mavlink_lora/mavlink_lora_command_reposition")
(setf (get mavlink_lora::mavlink_lora_command_reposition :definition-)
      "float64 ground_speed
float64 yaw_heading
float64 lat
float64 lon
float64 alt

")



(provide :mavlink_lora/mavlink_lora_command_reposition "79563d72b78866c926c96f14f749ab8e")


