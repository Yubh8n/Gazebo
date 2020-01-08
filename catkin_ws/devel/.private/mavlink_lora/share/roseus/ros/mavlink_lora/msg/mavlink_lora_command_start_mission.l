;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_command_start_mission)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_command_start_mission (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_START_MISSION")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_START_MISSION"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_command_start_mission.msg.html


(defclass mavlink_lora::mavlink_lora_command_start_mission
  :super ros::object
  :slots (_first_item _last_item ))

(defmethod mavlink_lora::mavlink_lora_command_start_mission
  (:init
   (&key
    ((:first_item __first_item) 0.0)
    ((:last_item __last_item) 0.0)
    )
   (send-super :init)
   (setq _first_item (float __first_item))
   (setq _last_item (float __last_item))
   self)
  (:first_item
   (&optional __first_item)
   (if __first_item (setq _first_item __first_item)) _first_item)
  (:last_item
   (&optional __last_item)
   (if __last_item (setq _last_item __last_item)) _last_item)
  (:serialization-length
   ()
   (+
    ;; float64 _first_item
    8
    ;; float64 _last_item
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _first_item
       (sys::poke _first_item (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _last_item
       (sys::poke _last_item (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _first_item
     (setq _first_item (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _last_item
     (setq _last_item (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_command_start_mission :md5sum-) "e6332a118f38eb9719c1f7f9fd9ec24c")
(setf (get mavlink_lora::mavlink_lora_command_start_mission :datatype-) "mavlink_lora/mavlink_lora_command_start_mission")
(setf (get mavlink_lora::mavlink_lora_command_start_mission :definition-)
      "float64 first_item
float64 last_item
")



(provide :mavlink_lora/mavlink_lora_command_start_mission "e6332a118f38eb9719c1f7f9fd9ec24c")


