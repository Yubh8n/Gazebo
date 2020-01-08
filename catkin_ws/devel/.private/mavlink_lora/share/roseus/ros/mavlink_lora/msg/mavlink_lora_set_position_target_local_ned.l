;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_set_position_target_local_ned)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_set_position_target_local_ned (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_SET_POSITION_TARGET_LOCAL_NED")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_SET_POSITION_TARGET_LOCAL_NED"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_set_position_target_local_ned.msg.html


(defclass mavlink_lora::mavlink_lora_set_position_target_local_ned
  :super ros::object
  :slots (_time_boot_ms _target_system _target_component _coordinate_frame _type_mask _x _y _z _vx _vy _vz _afx _afy _afz _yaw _yaw_rate ))

(defmethod mavlink_lora::mavlink_lora_set_position_target_local_ned
  (:init
   (&key
    ((:time_boot_ms __time_boot_ms) 0)
    ((:target_system __target_system) 0)
    ((:target_component __target_component) 0)
    ((:coordinate_frame __coordinate_frame) 0)
    ((:type_mask __type_mask) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:vz __vz) 0.0)
    ((:afx __afx) 0.0)
    ((:afy __afy) 0.0)
    ((:afz __afz) 0.0)
    ((:yaw __yaw) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    )
   (send-super :init)
   (setq _time_boot_ms (round __time_boot_ms))
   (setq _target_system (round __target_system))
   (setq _target_component (round __target_component))
   (setq _coordinate_frame (round __coordinate_frame))
   (setq _type_mask (round __type_mask))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _vz (float __vz))
   (setq _afx (float __afx))
   (setq _afy (float __afy))
   (setq _afz (float __afz))
   (setq _yaw (float __yaw))
   (setq _yaw_rate (float __yaw_rate))
   self)
  (:time_boot_ms
   (&optional __time_boot_ms)
   (if __time_boot_ms (setq _time_boot_ms __time_boot_ms)) _time_boot_ms)
  (:target_system
   (&optional __target_system)
   (if __target_system (setq _target_system __target_system)) _target_system)
  (:target_component
   (&optional __target_component)
   (if __target_component (setq _target_component __target_component)) _target_component)
  (:coordinate_frame
   (&optional __coordinate_frame)
   (if __coordinate_frame (setq _coordinate_frame __coordinate_frame)) _coordinate_frame)
  (:type_mask
   (&optional __type_mask)
   (if __type_mask (setq _type_mask __type_mask)) _type_mask)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:afx
   (&optional __afx)
   (if __afx (setq _afx __afx)) _afx)
  (:afy
   (&optional __afy)
   (if __afy (setq _afy __afy)) _afy)
  (:afz
   (&optional __afz)
   (if __afz (setq _afz __afz)) _afz)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:serialization-length
   ()
   (+
    ;; uint32 _time_boot_ms
    4
    ;; uint8 _target_system
    1
    ;; uint8 _target_component
    1
    ;; uint8 _coordinate_frame
    1
    ;; uint16 _type_mask
    2
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _vz
    8
    ;; float64 _afx
    8
    ;; float64 _afy
    8
    ;; float64 _afz
    8
    ;; float64 _yaw
    8
    ;; float64 _yaw_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _time_boot_ms
       (write-long _time_boot_ms s)
     ;; uint8 _target_system
       (write-byte _target_system s)
     ;; uint8 _target_component
       (write-byte _target_component s)
     ;; uint8 _coordinate_frame
       (write-byte _coordinate_frame s)
     ;; uint16 _type_mask
       (write-word _type_mask s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz
       (sys::poke _vz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _afx
       (sys::poke _afx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _afy
       (sys::poke _afy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _afz
       (sys::poke _afz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _time_boot_ms
     (setq _time_boot_ms (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _target_system
     (setq _target_system (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_component
     (setq _target_component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _coordinate_frame
     (setq _coordinate_frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _type_mask
     (setq _type_mask (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz
     (setq _vz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _afx
     (setq _afx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _afy
     (setq _afy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _afz
     (setq _afz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_set_position_target_local_ned :md5sum-) "90cd8aa6df876fb01860f809ed461d08")
(setf (get mavlink_lora::mavlink_lora_set_position_target_local_ned :datatype-) "mavlink_lora/mavlink_lora_set_position_target_local_ned")
(setf (get mavlink_lora::mavlink_lora_set_position_target_local_ned :definition-)
      "uint32 time_boot_ms
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



(provide :mavlink_lora/mavlink_lora_set_position_target_local_ned "90cd8aa6df876fb01860f809ed461d08")


