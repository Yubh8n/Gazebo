;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_mission_item_int)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_mission_item_int (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_MISSION_ITEM_INT")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_MISSION_ITEM_INT"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_mission_item_int.msg.html


(defclass mavlink_lora::mavlink_lora_mission_item_int
  :super ros::object
  :slots (_param1 _param2 _param3 _param4 _x _y _z _seq _command _target_system _target_component _frame _current _autocontinue ))

(defmethod mavlink_lora::mavlink_lora_mission_item_int
  (:init
   (&key
    ((:param1 __param1) 0.0)
    ((:param2 __param2) 0.0)
    ((:param3 __param3) 0.0)
    ((:param4 __param4) 0.0)
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0.0)
    ((:seq __seq) 0)
    ((:command __command) 0)
    ((:target_system __target_system) 0)
    ((:target_component __target_component) 0)
    ((:frame __frame) 0)
    ((:current __current) 0)
    ((:autocontinue __autocontinue) 0)
    )
   (send-super :init)
   (setq _param1 (float __param1))
   (setq _param2 (float __param2))
   (setq _param3 (float __param3))
   (setq _param4 (float __param4))
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (float __z))
   (setq _seq (round __seq))
   (setq _command (round __command))
   (setq _target_system (round __target_system))
   (setq _target_component (round __target_component))
   (setq _frame (round __frame))
   (setq _current (round __current))
   (setq _autocontinue (round __autocontinue))
   self)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:target_system
   (&optional __target_system)
   (if __target_system (setq _target_system __target_system)) _target_system)
  (:target_component
   (&optional __target_component)
   (if __target_component (setq _target_component __target_component)) _target_component)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:autocontinue
   (&optional __autocontinue)
   (if __autocontinue (setq _autocontinue __autocontinue)) _autocontinue)
  (:serialization-length
   ()
   (+
    ;; float64 _param1
    8
    ;; float64 _param2
    8
    ;; float64 _param3
    8
    ;; float64 _param4
    8
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; float64 _z
    8
    ;; uint16 _seq
    2
    ;; uint16 _command
    2
    ;; uint8 _target_system
    1
    ;; uint8 _target_component
    1
    ;; uint8 _frame
    1
    ;; uint8 _current
    1
    ;; uint8 _autocontinue
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _param1
       (sys::poke _param1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param2
       (sys::poke _param2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param3
       (sys::poke _param3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _param4
       (sys::poke _param4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _seq
       (write-word _seq s)
     ;; uint16 _command
       (write-word _command s)
     ;; uint8 _target_system
       (write-byte _target_system s)
     ;; uint8 _target_component
       (write-byte _target_component s)
     ;; uint8 _frame
       (write-byte _frame s)
     ;; uint8 _current
       (write-byte _current s)
     ;; uint8 _autocontinue
       (write-byte _autocontinue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _param1
     (setq _param1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param2
     (setq _param2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param3
     (setq _param3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _param4
     (setq _param4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _seq
     (setq _seq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _target_system
     (setq _target_system (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_component
     (setq _target_component (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _frame
     (setq _frame (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _current
     (setq _current (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _autocontinue
     (setq _autocontinue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_mission_item_int :md5sum-) "784b321495d46ff41f0090cf7750bfb2")
(setf (get mavlink_lora::mavlink_lora_mission_item_int :datatype-) "mavlink_lora/mavlink_lora_mission_item_int")
(setf (get mavlink_lora::mavlink_lora_mission_item_int :definition-)
      "float64 param1
float64 param2
float64 param3
float64 param4
int32 x
int32 y
float64 z
uint16 seq
uint16 command
uint8 target_system
uint8 target_component
uint8 frame
uint8 current
uint8 autocontinue
")



(provide :mavlink_lora/mavlink_lora_mission_item_int "784b321495d46ff41f0090cf7750bfb2")


