;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_msg)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_msg (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_MSG")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_MSG"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavlink_lora::mavlink_lora_msg
  :super ros::object
  :slots (_header _payload_len _seq _sys_id _comp_id _msg_id _payload _checksum ))

(defmethod mavlink_lora::mavlink_lora_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:payload_len __payload_len) 0)
    ((:seq __seq) 0)
    ((:sys_id __sys_id) 0)
    ((:comp_id __comp_id) 0)
    ((:msg_id __msg_id) 0)
    ((:payload __payload) (make-array 0 :initial-element 0 :element-type :char))
    ((:checksum __checksum) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _payload_len (round __payload_len))
   (setq _seq (round __seq))
   (setq _sys_id (round __sys_id))
   (setq _comp_id (round __comp_id))
   (setq _msg_id (round __msg_id))
   (setq _payload __payload)
   (setq _checksum (round __checksum))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:payload_len
   (&optional __payload_len)
   (if __payload_len (setq _payload_len __payload_len)) _payload_len)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:sys_id
   (&optional __sys_id)
   (if __sys_id (setq _sys_id __sys_id)) _sys_id)
  (:comp_id
   (&optional __comp_id)
   (if __comp_id (setq _comp_id __comp_id)) _comp_id)
  (:msg_id
   (&optional __msg_id)
   (if __msg_id (setq _msg_id __msg_id)) _msg_id)
  (:payload
   (&optional __payload)
   (if __payload (setq _payload __payload)) _payload)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _payload_len
    1
    ;; uint8 _seq
    1
    ;; uint8 _sys_id
    1
    ;; uint8 _comp_id
    1
    ;; uint32 _msg_id
    4
    ;; uint8[] _payload
    (* 1    (length _payload)) 4
    ;; uint16 _checksum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _payload_len
       (write-byte _payload_len s)
     ;; uint8 _seq
       (write-byte _seq s)
     ;; uint8 _sys_id
       (write-byte _sys_id s)
     ;; uint8 _comp_id
       (write-byte _comp_id s)
     ;; uint32 _msg_id
       (write-long _msg_id s)
     ;; uint8[] _payload
     (write-long (length _payload) s)
     (princ _payload s)
     ;; uint16 _checksum
       (write-word _checksum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _payload_len
     (setq _payload_len (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _seq
     (setq _seq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sys_id
     (setq _sys_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _comp_id
     (setq _comp_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _msg_id
     (setq _msg_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _payload
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _payload (make-array n :element-type :char))
     (replace _payload buf :start2 ptr-) (incf ptr- n))
   ;; uint16 _checksum
     (setq _checksum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_msg :md5sum-) "120cf225394fbebe4f78a7c5431f668a")
(setf (get mavlink_lora::mavlink_lora_msg :datatype-) "mavlink_lora/mavlink_lora_msg")
(setf (get mavlink_lora::mavlink_lora_msg :definition-)
      "Header header
uint8 payload_len
uint8 seq
uint8 sys_id
uint8 comp_id
uint32 msg_id
uint8[] payload
uint16 checksum


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :mavlink_lora/mavlink_lora_msg "120cf225394fbebe4f78a7c5431f668a")


