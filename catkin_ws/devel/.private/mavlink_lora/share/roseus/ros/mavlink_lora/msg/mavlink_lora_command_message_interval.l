;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_command_message_interval)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_command_message_interval (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_MESSAGE_INTERVAL")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_MESSAGE_INTERVAL"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_command_message_interval.msg.html


(defclass mavlink_lora::mavlink_lora_command_message_interval
  :super ros::object
  :slots (_message_id _interval ))

(defmethod mavlink_lora::mavlink_lora_command_message_interval
  (:init
   (&key
    ((:message_id __message_id) 0.0)
    ((:interval __interval) 0.0)
    )
   (send-super :init)
   (setq _message_id (float __message_id))
   (setq _interval (float __interval))
   self)
  (:message_id
   (&optional __message_id)
   (if __message_id (setq _message_id __message_id)) _message_id)
  (:interval
   (&optional __interval)
   (if __interval (setq _interval __interval)) _interval)
  (:serialization-length
   ()
   (+
    ;; float64 _message_id
    8
    ;; float64 _interval
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _message_id
       (sys::poke _message_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _interval
       (sys::poke _interval (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _message_id
     (setq _message_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _interval
     (setq _interval (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_command_message_interval :md5sum-) "55c9f15bed1a05ddbb00a99661cd4646")
(setf (get mavlink_lora::mavlink_lora_command_message_interval :datatype-) "mavlink_lora/mavlink_lora_command_message_interval")
(setf (get mavlink_lora::mavlink_lora_command_message_interval :definition-)
      "float64 message_id
float64 interval
")



(provide :mavlink_lora/mavlink_lora_command_message_interval "55c9f15bed1a05ddbb00a99661cd4646")


