; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_command_start_mission.msg.html

(cl:defclass <mavlink_lora_command_start_mission> (roslisp-msg-protocol:ros-message)
  ((first_item
    :reader first_item
    :initarg :first_item
    :type cl:float
    :initform 0.0)
   (last_item
    :reader last_item
    :initarg :last_item
    :type cl:float
    :initform 0.0))
)

(cl:defclass mavlink_lora_command_start_mission (<mavlink_lora_command_start_mission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_command_start_mission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_command_start_mission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_command_start_mission> is deprecated: use mavlink_lora-msg:mavlink_lora_command_start_mission instead.")))

(cl:ensure-generic-function 'first_item-val :lambda-list '(m))
(cl:defmethod first_item-val ((m <mavlink_lora_command_start_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:first_item-val is deprecated.  Use mavlink_lora-msg:first_item instead.")
  (first_item m))

(cl:ensure-generic-function 'last_item-val :lambda-list '(m))
(cl:defmethod last_item-val ((m <mavlink_lora_command_start_mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:last_item-val is deprecated.  Use mavlink_lora-msg:last_item instead.")
  (last_item m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_command_start_mission>) ostream)
  "Serializes a message object of type '<mavlink_lora_command_start_mission>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'first_item))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_item))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_command_start_mission>) istream)
  "Deserializes a message object of type '<mavlink_lora_command_start_mission>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'first_item) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_item) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_command_start_mission>)))
  "Returns string type for a message object of type '<mavlink_lora_command_start_mission>"
  "mavlink_lora/mavlink_lora_command_start_mission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_command_start_mission)))
  "Returns string type for a message object of type 'mavlink_lora_command_start_mission"
  "mavlink_lora/mavlink_lora_command_start_mission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_command_start_mission>)))
  "Returns md5sum for a message object of type '<mavlink_lora_command_start_mission>"
  "e6332a118f38eb9719c1f7f9fd9ec24c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_command_start_mission)))
  "Returns md5sum for a message object of type 'mavlink_lora_command_start_mission"
  "e6332a118f38eb9719c1f7f9fd9ec24c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_command_start_mission>)))
  "Returns full string definition for message of type '<mavlink_lora_command_start_mission>"
  (cl:format cl:nil "float64 first_item~%float64 last_item~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_command_start_mission)))
  "Returns full string definition for message of type 'mavlink_lora_command_start_mission"
  (cl:format cl:nil "float64 first_item~%float64 last_item~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_command_start_mission>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_command_start_mission>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_command_start_mission
    (cl:cons ':first_item (first_item msg))
    (cl:cons ':last_item (last_item msg))
))
