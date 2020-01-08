; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_status.msg.html

(cl:defclass <mavlink_lora_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (last_heard
    :reader last_heard
    :initarg :last_heard
    :type cl:real
    :initform 0)
   (last_heard_sys_status
    :reader last_heard_sys_status
    :initarg :last_heard_sys_status
    :type cl:real
    :initform 0)
   (batt_volt
    :reader batt_volt
    :initarg :batt_volt
    :type cl:fixnum
    :initform 0)
   (cpu_load
    :reader cpu_load
    :initarg :cpu_load
    :type cl:fixnum
    :initform 0)
   (batt_remaining
    :reader batt_remaining
    :initarg :batt_remaining
    :type cl:fixnum
    :initform 0)
   (msg_sent_gcs
    :reader msg_sent_gcs
    :initarg :msg_sent_gcs
    :type cl:integer
    :initform 0)
   (msg_received_gcs
    :reader msg_received_gcs
    :initarg :msg_received_gcs
    :type cl:integer
    :initform 0)
   (msg_dropped_gcs
    :reader msg_dropped_gcs
    :initarg :msg_dropped_gcs
    :type cl:integer
    :initform 0)
   (msg_dropped_uas
    :reader msg_dropped_uas
    :initarg :msg_dropped_uas
    :type cl:integer
    :initform 0))
)

(cl:defclass mavlink_lora_status (<mavlink_lora_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_status> is deprecated: use mavlink_lora-msg:mavlink_lora_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:header-val is deprecated.  Use mavlink_lora-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'last_heard-val :lambda-list '(m))
(cl:defmethod last_heard-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:last_heard-val is deprecated.  Use mavlink_lora-msg:last_heard instead.")
  (last_heard m))

(cl:ensure-generic-function 'last_heard_sys_status-val :lambda-list '(m))
(cl:defmethod last_heard_sys_status-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:last_heard_sys_status-val is deprecated.  Use mavlink_lora-msg:last_heard_sys_status instead.")
  (last_heard_sys_status m))

(cl:ensure-generic-function 'batt_volt-val :lambda-list '(m))
(cl:defmethod batt_volt-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:batt_volt-val is deprecated.  Use mavlink_lora-msg:batt_volt instead.")
  (batt_volt m))

(cl:ensure-generic-function 'cpu_load-val :lambda-list '(m))
(cl:defmethod cpu_load-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:cpu_load-val is deprecated.  Use mavlink_lora-msg:cpu_load instead.")
  (cpu_load m))

(cl:ensure-generic-function 'batt_remaining-val :lambda-list '(m))
(cl:defmethod batt_remaining-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:batt_remaining-val is deprecated.  Use mavlink_lora-msg:batt_remaining instead.")
  (batt_remaining m))

(cl:ensure-generic-function 'msg_sent_gcs-val :lambda-list '(m))
(cl:defmethod msg_sent_gcs-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:msg_sent_gcs-val is deprecated.  Use mavlink_lora-msg:msg_sent_gcs instead.")
  (msg_sent_gcs m))

(cl:ensure-generic-function 'msg_received_gcs-val :lambda-list '(m))
(cl:defmethod msg_received_gcs-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:msg_received_gcs-val is deprecated.  Use mavlink_lora-msg:msg_received_gcs instead.")
  (msg_received_gcs m))

(cl:ensure-generic-function 'msg_dropped_gcs-val :lambda-list '(m))
(cl:defmethod msg_dropped_gcs-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:msg_dropped_gcs-val is deprecated.  Use mavlink_lora-msg:msg_dropped_gcs instead.")
  (msg_dropped_gcs m))

(cl:ensure-generic-function 'msg_dropped_uas-val :lambda-list '(m))
(cl:defmethod msg_dropped_uas-val ((m <mavlink_lora_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:msg_dropped_uas-val is deprecated.  Use mavlink_lora-msg:msg_dropped_uas instead.")
  (msg_dropped_uas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_status>) ostream)
  "Serializes a message object of type '<mavlink_lora_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'last_heard)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'last_heard) (cl:floor (cl:slot-value msg 'last_heard)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'last_heard_sys_status)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'last_heard_sys_status) (cl:floor (cl:slot-value msg 'last_heard_sys_status)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batt_volt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batt_volt)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cpu_load)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cpu_load)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'batt_remaining)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_sent_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_sent_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_sent_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_sent_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_received_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_received_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_received_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_received_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_dropped_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_dropped_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_dropped_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_dropped_gcs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_dropped_uas)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_dropped_uas)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_dropped_uas)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_dropped_uas)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_status>) istream)
  "Deserializes a message object of type '<mavlink_lora_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_heard) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_heard_sys_status) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batt_volt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'batt_volt)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cpu_load)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cpu_load)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batt_remaining) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_sent_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_sent_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_sent_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_sent_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_received_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_received_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_received_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_received_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_dropped_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_dropped_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_dropped_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_dropped_gcs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_dropped_uas)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'msg_dropped_uas)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'msg_dropped_uas)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'msg_dropped_uas)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_status>)))
  "Returns string type for a message object of type '<mavlink_lora_status>"
  "mavlink_lora/mavlink_lora_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_status)))
  "Returns string type for a message object of type 'mavlink_lora_status"
  "mavlink_lora/mavlink_lora_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_status>)))
  "Returns md5sum for a message object of type '<mavlink_lora_status>"
  "06982f39fc78bcc6472ae00b3aa4d346")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_status)))
  "Returns md5sum for a message object of type 'mavlink_lora_status"
  "06982f39fc78bcc6472ae00b3aa4d346")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_status>)))
  "Returns full string definition for message of type '<mavlink_lora_status>"
  (cl:format cl:nil "Header header~%time last_heard~%time last_heard_sys_status~%uint16 batt_volt~%uint16 cpu_load~%int8 batt_remaining~%~%uint32 msg_sent_gcs~%uint32 msg_received_gcs~%uint32 msg_dropped_gcs~%uint32 msg_dropped_uas~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_status)))
  "Returns full string definition for message of type 'mavlink_lora_status"
  (cl:format cl:nil "Header header~%time last_heard~%time last_heard_sys_status~%uint16 batt_volt~%uint16 cpu_load~%int8 batt_remaining~%~%uint32 msg_sent_gcs~%uint32 msg_received_gcs~%uint32 msg_dropped_gcs~%uint32 msg_dropped_uas~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     2
     2
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_status>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_status
    (cl:cons ':header (header msg))
    (cl:cons ':last_heard (last_heard msg))
    (cl:cons ':last_heard_sys_status (last_heard_sys_status msg))
    (cl:cons ':batt_volt (batt_volt msg))
    (cl:cons ':cpu_load (cpu_load msg))
    (cl:cons ':batt_remaining (batt_remaining msg))
    (cl:cons ':msg_sent_gcs (msg_sent_gcs msg))
    (cl:cons ':msg_received_gcs (msg_received_gcs msg))
    (cl:cons ':msg_dropped_gcs (msg_dropped_gcs msg))
    (cl:cons ':msg_dropped_uas (msg_dropped_uas msg))
))
