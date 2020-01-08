;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_heartbeat)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_heartbeat (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_HEARTBEAT")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_HEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_heartbeat.msg.html


(defclass mavlink_lora::mavlink_lora_heartbeat
  :super ros::object
  :slots (_type _autopilot _base_mode _custom_mode _system_status _system_id ))

(defmethod mavlink_lora::mavlink_lora_heartbeat
  (:init
   (&key
    ((:type __type) 0)
    ((:autopilot __autopilot) 0)
    ((:base_mode __base_mode) 0)
    ((:custom_mode __custom_mode) 0)
    ((:system_status __system_status) 0)
    ((:system_id __system_id) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _autopilot (round __autopilot))
   (setq _base_mode (round __base_mode))
   (setq _custom_mode (round __custom_mode))
   (setq _system_status (round __system_status))
   (setq _system_id (round __system_id))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:autopilot
   (&optional __autopilot)
   (if __autopilot (setq _autopilot __autopilot)) _autopilot)
  (:base_mode
   (&optional __base_mode)
   (if __base_mode (setq _base_mode __base_mode)) _base_mode)
  (:custom_mode
   (&optional __custom_mode)
   (if __custom_mode (setq _custom_mode __custom_mode)) _custom_mode)
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:system_id
   (&optional __system_id)
   (if __system_id (setq _system_id __system_id)) _system_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint8 _autopilot
    1
    ;; uint8 _base_mode
    1
    ;; uint32 _custom_mode
    4
    ;; uint8 _system_status
    1
    ;; uint8 _system_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _autopilot
       (write-byte _autopilot s)
     ;; uint8 _base_mode
       (write-byte _base_mode s)
     ;; uint32 _custom_mode
       (write-long _custom_mode s)
     ;; uint8 _system_status
       (write-byte _system_status s)
     ;; uint8 _system_id
       (write-byte _system_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autopilot
     (setq _autopilot (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _base_mode
     (setq _base_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _custom_mode
     (setq _custom_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _system_status
     (setq _system_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _system_id
     (setq _system_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_heartbeat :md5sum-) "eb6c018f35a538ffe1179b637866562f")
(setf (get mavlink_lora::mavlink_lora_heartbeat :datatype-) "mavlink_lora/mavlink_lora_heartbeat")
(setf (get mavlink_lora::mavlink_lora_heartbeat :definition-)
      "uint8 type
uint8 autopilot
uint8 base_mode
uint32 custom_mode
uint8 system_status
uint8 system_id

")



(provide :mavlink_lora/mavlink_lora_heartbeat "eb6c018f35a538ffe1179b637866562f")


