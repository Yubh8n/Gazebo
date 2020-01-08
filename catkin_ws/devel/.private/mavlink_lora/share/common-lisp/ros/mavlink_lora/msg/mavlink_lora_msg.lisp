; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_msg.msg.html

(cl:defclass <mavlink_lora_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (payload_len
    :reader payload_len
    :initarg :payload_len
    :type cl:fixnum
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:fixnum
    :initform 0)
   (sys_id
    :reader sys_id
    :initarg :sys_id
    :type cl:fixnum
    :initform 0)
   (comp_id
    :reader comp_id
    :initarg :comp_id
    :type cl:fixnum
    :initform 0)
   (msg_id
    :reader msg_id
    :initarg :msg_id
    :type cl:integer
    :initform 0)
   (payload
    :reader payload
    :initarg :payload
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (checksum
    :reader checksum
    :initarg :checksum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mavlink_lora_msg (<mavlink_lora_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_msg> is deprecated: use mavlink_lora-msg:mavlink_lora_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:header-val is deprecated.  Use mavlink_lora-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'payload_len-val :lambda-list '(m))
(cl:defmethod payload_len-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:payload_len-val is deprecated.  Use mavlink_lora-msg:payload_len instead.")
  (payload_len m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:seq-val is deprecated.  Use mavlink_lora-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'sys_id-val :lambda-list '(m))
(cl:defmethod sys_id-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:sys_id-val is deprecated.  Use mavlink_lora-msg:sys_id instead.")
  (sys_id m))

(cl:ensure-generic-function 'comp_id-val :lambda-list '(m))
(cl:defmethod comp_id-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:comp_id-val is deprecated.  Use mavlink_lora-msg:comp_id instead.")
  (comp_id m))

(cl:ensure-generic-function 'msg_id-val :lambda-list '(m))
(cl:defmethod msg_id-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:msg_id-val is deprecated.  Use mavlink_lora-msg:msg_id instead.")
  (msg_id m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:payload-val is deprecated.  Use mavlink_lora-msg:payload instead.")
  (payload m))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <mavlink_lora_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:checksum-val is deprecated.  Use mavlink_lora-msg:checksum instead.")
  (checksum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_msg>) ostream)
  "Serializes a message object of type '<mavlink_lora_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_len)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comp_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'payload))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_msg>) istream)
  "Deserializes a message object of type '<mavlink_lora_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_len)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'comp_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'payload) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'payload)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_msg>)))
  "Returns string type for a message object of type '<mavlink_lora_msg>"
  "mavlink_lora/mavlink_lora_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_msg)))
  "Returns string type for a message object of type 'mavlink_lora_msg"
  "mavlink_lora/mavlink_lora_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_msg>)))
  "Returns md5sum for a message object of type '<mavlink_lora_msg>"
  "120cf225394fbebe4f78a7c5431f668a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_msg)))
  "Returns md5sum for a message object of type 'mavlink_lora_msg"
  "120cf225394fbebe4f78a7c5431f668a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_msg>)))
  "Returns full string definition for message of type '<mavlink_lora_msg>"
  (cl:format cl:nil "Header header~%uint8 payload_len~%uint8 seq~%uint8 sys_id~%uint8 comp_id~%uint32 msg_id~%uint8[] payload~%uint16 checksum~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_msg)))
  "Returns full string definition for message of type 'mavlink_lora_msg"
  (cl:format cl:nil "Header header~%uint8 payload_len~%uint8 seq~%uint8 sys_id~%uint8 comp_id~%uint32 msg_id~%uint8[] payload~%uint16 checksum~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'payload) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_msg
    (cl:cons ':header (header msg))
    (cl:cons ':payload_len (payload_len msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':sys_id (sys_id msg))
    (cl:cons ':comp_id (comp_id msg))
    (cl:cons ':msg_id (msg_id msg))
    (cl:cons ':payload (payload msg))
    (cl:cons ':checksum (checksum msg))
))
