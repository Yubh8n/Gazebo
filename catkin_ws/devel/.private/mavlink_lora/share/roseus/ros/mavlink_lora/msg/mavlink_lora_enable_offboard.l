;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_enable_offboard)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_enable_offboard (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_ENABLE_OFFBOARD")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_ENABLE_OFFBOARD"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_enable_offboard.msg.html


(defclass mavlink_lora::mavlink_lora_enable_offboard
  :super ros::object
  :slots (_enable _target ))

(defmethod mavlink_lora::mavlink_lora_enable_offboard
  (:init
   (&key
    ((:enable __enable) nil)
    ((:target __target) (instance mavlink_lora::mavlink_lora_set_position_target_local_ned :init))
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _target __target)
   self)
  (:enable
   (&optional __enable)
   (if __enable (setq _enable __enable)) _enable)
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; mavlink_lora/mavlink_lora_set_position_target_local_ned _target
    (send _target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; mavlink_lora/mavlink_lora_set_position_target_local_ned _target
       (send _target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mavlink_lora/mavlink_lora_set_position_target_local_ned _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_enable_offboard :md5sum-) "8ac27867a236051af943bfb59e863df3")
(setf (get mavlink_lora::mavlink_lora_enable_offboard :datatype-) "mavlink_lora/mavlink_lora_enable_offboard")
(setf (get mavlink_lora::mavlink_lora_enable_offboard :definition-)
      "bool enable
mavlink_lora_set_position_target_local_ned target

================================================================================
MSG: mavlink_lora/mavlink_lora_set_position_target_local_ned
uint32 time_boot_ms
uint8 target_system
uint8 target_component
uint8 coordinate_frame
uint16 type_mask
float64 x
float64 y
float64 z
float64 vx
float64 vy
float64 vz
float64 afx
float64 afy
float64 afz
float64 yaw
float64 yaw_rate
")



(provide :mavlink_lora/mavlink_lora_enable_offboard "8ac27867a236051af943bfb59e863df3")


