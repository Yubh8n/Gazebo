;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_attitude)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_attitude (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_ATTITUDE")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_ATTITUDE"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_attitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mavlink_lora::mavlink_lora_attitude
  :super ros::object
  :slots (_header _time_usec _roll _pitch _yaw ))

(defmethod mavlink_lora::mavlink_lora_attitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time_usec __time_usec) 0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time_usec (round __time_usec))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
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
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _time_usec
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
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
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_attitude :md5sum-) "f51815e2b8e862d95dad00af00fe2286")
(setf (get mavlink_lora::mavlink_lora_attitude :datatype-) "mavlink_lora/mavlink_lora_attitude")
(setf (get mavlink_lora::mavlink_lora_attitude :definition-)
      "Header header
uint64 time_usec
float64 roll
float64 pitch
float64 yaw

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



(provide :mavlink_lora/mavlink_lora_attitude "f51815e2b8e862d95dad00af00fe2286")


