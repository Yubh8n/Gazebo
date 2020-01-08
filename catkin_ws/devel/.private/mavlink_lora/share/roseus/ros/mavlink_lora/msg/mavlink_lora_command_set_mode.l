;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_command_set_mode)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_command_set_mode (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_SET_MODE")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_SET_MODE"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_command_set_mode.msg.html


(defclass mavlink_lora::mavlink_lora_command_set_mode
  :super ros::object
  :slots (_mode _custom_mode _custom_sub_mode ))

(defmethod mavlink_lora::mavlink_lora_command_set_mode
  (:init
   (&key
    ((:mode __mode) 0.0)
    ((:custom_mode __custom_mode) 0.0)
    ((:custom_sub_mode __custom_sub_mode) 0.0)
    )
   (send-super :init)
   (setq _mode (float __mode))
   (setq _custom_mode (float __custom_mode))
   (setq _custom_sub_mode (float __custom_sub_mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:custom_mode
   (&optional __custom_mode)
   (if __custom_mode (setq _custom_mode __custom_mode)) _custom_mode)
  (:custom_sub_mode
   (&optional __custom_sub_mode)
   (if __custom_sub_mode (setq _custom_sub_mode __custom_sub_mode)) _custom_sub_mode)
  (:serialization-length
   ()
   (+
    ;; float64 _mode
    8
    ;; float64 _custom_mode
    8
    ;; float64 _custom_sub_mode
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mode
       (sys::poke _mode (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _custom_mode
       (sys::poke _custom_mode (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _custom_sub_mode
       (sys::poke _custom_sub_mode (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mode
     (setq _mode (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _custom_mode
     (setq _custom_mode (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _custom_sub_mode
     (setq _custom_sub_mode (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_command_set_mode :md5sum-) "da98e2819d970e24304003e95747a815")
(setf (get mavlink_lora::mavlink_lora_command_set_mode :datatype-) "mavlink_lora/mavlink_lora_command_set_mode")
(setf (get mavlink_lora::mavlink_lora_command_set_mode :definition-)
      "float64 mode
float64 custom_mode
float64 custom_sub_mode
")



(provide :mavlink_lora/mavlink_lora_command_set_mode "da98e2819d970e24304003e95747a815")


