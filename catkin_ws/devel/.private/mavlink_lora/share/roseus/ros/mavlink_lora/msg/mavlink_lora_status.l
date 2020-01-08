;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_status)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_status (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_STATUS")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_STATUS"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavlink_lora::mavlink_lora_status
  :super ros::object
  :slots (_header _last_heard _last_heard_sys_status _batt_volt _cpu_load _batt_remaining _msg_sent_gcs _msg_received_gcs _msg_dropped_gcs _msg_dropped_uas ))

(defmethod mavlink_lora::mavlink_lora_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:last_heard __last_heard) (instance ros::time :init))
    ((:last_heard_sys_status __last_heard_sys_status) (instance ros::time :init))
    ((:batt_volt __batt_volt) 0)
    ((:cpu_load __cpu_load) 0)
    ((:batt_remaining __batt_remaining) 0)
    ((:msg_sent_gcs __msg_sent_gcs) 0)
    ((:msg_received_gcs __msg_received_gcs) 0)
    ((:msg_dropped_gcs __msg_dropped_gcs) 0)
    ((:msg_dropped_uas __msg_dropped_uas) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _last_heard __last_heard)
   (setq _last_heard_sys_status __last_heard_sys_status)
   (setq _batt_volt (round __batt_volt))
   (setq _cpu_load (round __cpu_load))
   (setq _batt_remaining (round __batt_remaining))
   (setq _msg_sent_gcs (round __msg_sent_gcs))
   (setq _msg_received_gcs (round __msg_received_gcs))
   (setq _msg_dropped_gcs (round __msg_dropped_gcs))
   (setq _msg_dropped_uas (round __msg_dropped_uas))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:last_heard
   (&optional __last_heard)
   (if __last_heard (setq _last_heard __last_heard)) _last_heard)
  (:last_heard_sys_status
   (&optional __last_heard_sys_status)
   (if __last_heard_sys_status (setq _last_heard_sys_status __last_heard_sys_status)) _last_heard_sys_status)
  (:batt_volt
   (&optional __batt_volt)
   (if __batt_volt (setq _batt_volt __batt_volt)) _batt_volt)
  (:cpu_load
   (&optional __cpu_load)
   (if __cpu_load (setq _cpu_load __cpu_load)) _cpu_load)
  (:batt_remaining
   (&optional __batt_remaining)
   (if __batt_remaining (setq _batt_remaining __batt_remaining)) _batt_remaining)
  (:msg_sent_gcs
   (&optional __msg_sent_gcs)
   (if __msg_sent_gcs (setq _msg_sent_gcs __msg_sent_gcs)) _msg_sent_gcs)
  (:msg_received_gcs
   (&optional __msg_received_gcs)
   (if __msg_received_gcs (setq _msg_received_gcs __msg_received_gcs)) _msg_received_gcs)
  (:msg_dropped_gcs
   (&optional __msg_dropped_gcs)
   (if __msg_dropped_gcs (setq _msg_dropped_gcs __msg_dropped_gcs)) _msg_dropped_gcs)
  (:msg_dropped_uas
   (&optional __msg_dropped_uas)
   (if __msg_dropped_uas (setq _msg_dropped_uas __msg_dropped_uas)) _msg_dropped_uas)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _last_heard
    8
    ;; time _last_heard_sys_status
    8
    ;; uint16 _batt_volt
    2
    ;; uint16 _cpu_load
    2
    ;; int8 _batt_remaining
    1
    ;; uint32 _msg_sent_gcs
    4
    ;; uint32 _msg_received_gcs
    4
    ;; uint32 _msg_dropped_gcs
    4
    ;; uint32 _msg_dropped_uas
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _last_heard
       (write-long (send _last_heard :sec) s) (write-long (send _last_heard :nsec) s)
     ;; time _last_heard_sys_status
       (write-long (send _last_heard_sys_status :sec) s) (write-long (send _last_heard_sys_status :nsec) s)
     ;; uint16 _batt_volt
       (write-word _batt_volt s)
     ;; uint16 _cpu_load
       (write-word _cpu_load s)
     ;; int8 _batt_remaining
       (write-byte _batt_remaining s)
     ;; uint32 _msg_sent_gcs
       (write-long _msg_sent_gcs s)
     ;; uint32 _msg_received_gcs
       (write-long _msg_received_gcs s)
     ;; uint32 _msg_dropped_gcs
       (write-long _msg_dropped_gcs s)
     ;; uint32 _msg_dropped_uas
       (write-long _msg_dropped_uas s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _last_heard
     (send _last_heard :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _last_heard :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _last_heard_sys_status
     (send _last_heard_sys_status :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _last_heard_sys_status :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _batt_volt
     (setq _batt_volt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _cpu_load
     (setq _cpu_load (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _batt_remaining
     (setq _batt_remaining (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _batt_remaining 127) (setq _batt_remaining (- _batt_remaining 256)))
   ;; uint32 _msg_sent_gcs
     (setq _msg_sent_gcs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _msg_received_gcs
     (setq _msg_received_gcs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _msg_dropped_gcs
     (setq _msg_dropped_gcs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _msg_dropped_uas
     (setq _msg_dropped_uas (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_status :md5sum-) "06982f39fc78bcc6472ae00b3aa4d346")
(setf (get mavlink_lora::mavlink_lora_status :datatype-) "mavlink_lora/mavlink_lora_status")
(setf (get mavlink_lora::mavlink_lora_status :definition-)
      "Header header
time last_heard
time last_heard_sys_status
uint16 batt_volt
uint16 cpu_load
int8 batt_remaining

uint32 msg_sent_gcs
uint32 msg_received_gcs
uint32 msg_dropped_gcs
uint32 msg_dropped_uas


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



(provide :mavlink_lora/mavlink_lora_status "06982f39fc78bcc6472ae00b3aa4d346")


