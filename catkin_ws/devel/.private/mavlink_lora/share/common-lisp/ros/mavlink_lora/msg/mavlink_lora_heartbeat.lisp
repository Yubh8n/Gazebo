; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_heartbeat.msg.html

(cl:defclass <mavlink_lora_heartbeat> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (autopilot
    :reader autopilot
    :initarg :autopilot
    :type cl:fixnum
    :initform 0)
   (base_mode
    :reader base_mode
    :initarg :base_mode
    :type cl:fixnum
    :initform 0)
   (custom_mode
    :reader custom_mode
    :initarg :custom_mode
    :type cl:integer
    :initform 0)
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:fixnum
    :initform 0)
   (system_id
    :reader system_id
    :initarg :system_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mavlink_lora_heartbeat (<mavlink_lora_heartbeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_heartbeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_heartbeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_heartbeat> is deprecated: use mavlink_lora-msg:mavlink_lora_heartbeat instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <mavlink_lora_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:type-val is deprecated.  Use mavlink_lora-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'autopilot-val :lambda-list '(m))
(cl:defmethod autopilot-val ((m <mavlink_lora_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:autopilot-val is deprecated.  Use mavlink_lora-msg:autopilot instead.")
  (autopilot m))

(cl:ensure-generic-function 'base_mode-val :lambda-list '(m))
(cl:defmethod base_mode-val ((m <mavlink_lora_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:base_mode-val is deprecated.  Use mavlink_lora-msg:base_mode instead.")
  (base_mode m))

(cl:ensure-generic-function 'custom_mode-val :lambda-list '(m))
(cl:defmethod custom_mode-val ((m <mavlink_lora_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:custom_mode-val is deprecated.  Use mavlink_lora-msg:custom_mode instead.")
  (custom_mode m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <mavlink_lora_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:system_status-val is deprecated.  Use mavlink_lora-msg:system_status instead.")
  (system_status m))

(cl:ensure-generic-function 'system_id-val :lambda-list '(m))
(cl:defmethod system_id-val ((m <mavlink_lora_heartbeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:system_id-val is deprecated.  Use mavlink_lora-msg:system_id instead.")
  (system_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_heartbeat>) ostream)
  "Serializes a message object of type '<mavlink_lora_heartbeat>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'custom_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_heartbeat>) istream)
  "Deserializes a message object of type '<mavlink_lora_heartbeat>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'autopilot)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'custom_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_heartbeat>)))
  "Returns string type for a message object of type '<mavlink_lora_heartbeat>"
  "mavlink_lora/mavlink_lora_heartbeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_heartbeat)))
  "Returns string type for a message object of type 'mavlink_lora_heartbeat"
  "mavlink_lora/mavlink_lora_heartbeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_heartbeat>)))
  "Returns md5sum for a message object of type '<mavlink_lora_heartbeat>"
  "eb6c018f35a538ffe1179b637866562f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_heartbeat)))
  "Returns md5sum for a message object of type 'mavlink_lora_heartbeat"
  "eb6c018f35a538ffe1179b637866562f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_heartbeat>)))
  "Returns full string definition for message of type '<mavlink_lora_heartbeat>"
  (cl:format cl:nil "uint8 type~%uint8 autopilot~%uint8 base_mode~%uint32 custom_mode~%uint8 system_status~%uint8 system_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_heartbeat)))
  "Returns full string definition for message of type 'mavlink_lora_heartbeat"
  (cl:format cl:nil "uint8 type~%uint8 autopilot~%uint8 base_mode~%uint32 custom_mode~%uint8 system_status~%uint8 system_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_heartbeat>))
  (cl:+ 0
     1
     1
     1
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_heartbeat>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_heartbeat
    (cl:cons ':type (type msg))
    (cl:cons ':autopilot (autopilot msg))
    (cl:cons ':base_mode (base_mode msg))
    (cl:cons ':custom_mode (custom_mode msg))
    (cl:cons ':system_status (system_status msg))
    (cl:cons ':system_id (system_id msg))
))
