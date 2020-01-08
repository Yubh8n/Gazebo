;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_mission_list)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_mission_list (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_MISSION_LIST")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_MISSION_LIST"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_mission_list.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavlink_lora::mavlink_lora_mission_list
  :super ros::object
  :slots (_header _time_usec _waypoints _append_start_index ))

(defmethod mavlink_lora::mavlink_lora_mission_list
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_usec __time_usec) 0)
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance mavlink_lora::mavlink_lora_mission_item_int :init) r)) r))
    ((:append_start_index __append_start_index) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_usec (round __time_usec))
   (setq _waypoints __waypoints)
   (setq _append_start_index (round __append_start_index))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time_usec
   (&optional __time_usec)
   (if __time_usec (setq _time_usec __time_usec)) _time_usec)
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:append_start_index
   (&optional __append_start_index)
   (if __append_start_index (setq _append_start_index __append_start_index)) _append_start_index)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _time_usec
    8
    ;; mavlink_lora/mavlink_lora_mission_item_int[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; int8 _append_start_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _time_usec
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_usec (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_usec) (= (length (_time_usec . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_usec . bv) 0) 0) s)
              (write-long (ash (elt (_time_usec . bv) 1) -1) s))
             ((and (class _time_usec) (= (length (_time_usec . bv)) 1)) ;; big1
              (write-long (elt (_time_usec . bv) 0) s)
              (write-long (if (>= _time_usec 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_usec s)(write-long (if (>= _time_usec 0) 0 #xffffffff) s)))
     ;; mavlink_lora/mavlink_lora_mission_item_int[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; int8 _append_start_index
       (write-byte _append_start_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _time_usec
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_usec (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_usec (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; mavlink_lora/mavlink_lora_mission_item_int[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance mavlink_lora::mavlink_lora_mission_item_int :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8 _append_start_index
     (setq _append_start_index (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _append_start_index 127) (setq _append_start_index (- _append_start_index 256)))
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_mission_list :md5sum-) "9b03814eda60166a67a626c08cd9b744")
(setf (get mavlink_lora::mavlink_lora_mission_list :datatype-) "mavlink_lora/mavlink_lora_mission_list")
(setf (get mavlink_lora::mavlink_lora_mission_list :definition-)
      "Header header
uint64 time_usec

mavlink_lora_mission_item_int[] waypoints
int8 append_start_index
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

================================================================================
MSG: mavlink_lora/mavlink_lora_mission_item_int
float64 param1
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



(provide :mavlink_lora/mavlink_lora_mission_list "9b03814eda60166a67a626c08cd9b744")


