; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_command_message_interval.msg.html

(cl:defclass <mavlink_lora_command_message_interval> (roslisp-msg-protocol:ros-message)
  ((message_id
    :reader message_id
    :initarg :message_id
    :type cl:float
    :initform 0.0)
   (interval
    :reader interval
    :initarg :interval
    :type cl:float
    :initform 0.0))
)

(cl:defclass mavlink_lora_command_message_interval (<mavlink_lora_command_message_interval>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_command_message_interval>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_command_message_interval)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_command_message_interval> is deprecated: use mavlink_lora-msg:mavlink_lora_command_message_interval instead.")))

(cl:ensure-generic-function 'message_id-val :lambda-list '(m))
(cl:defmethod message_id-val ((m <mavlink_lora_command_message_interval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:message_id-val is deprecated.  Use mavlink_lora-msg:message_id instead.")
  (message_id m))

(cl:ensure-generic-function 'interval-val :lambda-list '(m))
(cl:defmethod interval-val ((m <mavlink_lora_command_message_interval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:interval-val is deprecated.  Use mavlink_lora-msg:interval instead.")
  (interval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_command_message_interval>) ostream)
  "Serializes a message object of type '<mavlink_lora_command_message_interval>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'message_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_command_message_interval>) istream)
  "Deserializes a message object of type '<mavlink_lora_command_message_interval>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'message_id) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'interval) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_command_message_interval>)))
  "Returns string type for a message object of type '<mavlink_lora_command_message_interval>"
  "mavlink_lora/mavlink_lora_command_message_interval")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_command_message_interval)))
  "Returns string type for a message object of type 'mavlink_lora_command_message_interval"
  "mavlink_lora/mavlink_lora_command_message_interval")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_command_message_interval>)))
  "Returns md5sum for a message object of type '<mavlink_lora_command_message_interval>"
  "55c9f15bed1a05ddbb00a99661cd4646")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_command_message_interval)))
  "Returns md5sum for a message object of type 'mavlink_lora_command_message_interval"
  "55c9f15bed1a05ddbb00a99661cd4646")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_command_message_interval>)))
  "Returns full string definition for message of type '<mavlink_lora_command_message_interval>"
  (cl:format cl:nil "float64 message_id~%float64 interval~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_command_message_interval)))
  "Returns full string definition for message of type 'mavlink_lora_command_message_interval"
  (cl:format cl:nil "float64 message_id~%float64 interval~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_command_message_interval>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_command_message_interval>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_command_message_interval
    (cl:cons ':message_id (message_id msg))
    (cl:cons ':interval (interval msg))
))
