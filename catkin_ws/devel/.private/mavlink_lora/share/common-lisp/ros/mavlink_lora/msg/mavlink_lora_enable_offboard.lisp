; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_enable_offboard.msg.html

(cl:defclass <mavlink_lora_enable_offboard> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (target
    :reader target
    :initarg :target
    :type mavlink_lora-msg:mavlink_lora_set_position_target_local_ned
    :initform (cl:make-instance 'mavlink_lora-msg:mavlink_lora_set_position_target_local_ned)))
)

(cl:defclass mavlink_lora_enable_offboard (<mavlink_lora_enable_offboard>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_enable_offboard>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_enable_offboard)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_enable_offboard> is deprecated: use mavlink_lora-msg:mavlink_lora_enable_offboard instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <mavlink_lora_enable_offboard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:enable-val is deprecated.  Use mavlink_lora-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <mavlink_lora_enable_offboard>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:target-val is deprecated.  Use mavlink_lora-msg:target instead.")
  (target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_enable_offboard>) ostream)
  "Serializes a message object of type '<mavlink_lora_enable_offboard>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_enable_offboard>) istream)
  "Deserializes a message object of type '<mavlink_lora_enable_offboard>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_enable_offboard>)))
  "Returns string type for a message object of type '<mavlink_lora_enable_offboard>"
  "mavlink_lora/mavlink_lora_enable_offboard")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_enable_offboard)))
  "Returns string type for a message object of type 'mavlink_lora_enable_offboard"
  "mavlink_lora/mavlink_lora_enable_offboard")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_enable_offboard>)))
  "Returns md5sum for a message object of type '<mavlink_lora_enable_offboard>"
  "8ac27867a236051af943bfb59e863df3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_enable_offboard)))
  "Returns md5sum for a message object of type 'mavlink_lora_enable_offboard"
  "8ac27867a236051af943bfb59e863df3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_enable_offboard>)))
  "Returns full string definition for message of type '<mavlink_lora_enable_offboard>"
  (cl:format cl:nil "bool enable~%mavlink_lora_set_position_target_local_ned target~%~%================================================================================~%MSG: mavlink_lora/mavlink_lora_set_position_target_local_ned~%uint32 time_boot_ms~%uint8 target_system~%uint8 target_component~%uint8 coordinate_frame~%uint16 type_mask~%float64 x~%float64 y~%float64 z~%float64 vx~%float64 vy~%float64 vz~%float64 afx~%float64 afy~%float64 afz~%float64 yaw~%float64 yaw_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_enable_offboard)))
  "Returns full string definition for message of type 'mavlink_lora_enable_offboard"
  (cl:format cl:nil "bool enable~%mavlink_lora_set_position_target_local_ned target~%~%================================================================================~%MSG: mavlink_lora/mavlink_lora_set_position_target_local_ned~%uint32 time_boot_ms~%uint8 target_system~%uint8 target_component~%uint8 coordinate_frame~%uint16 type_mask~%float64 x~%float64 y~%float64 z~%float64 vx~%float64 vy~%float64 vz~%float64 afx~%float64 afy~%float64 afz~%float64 yaw~%float64 yaw_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_enable_offboard>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_enable_offboard>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_enable_offboard
    (cl:cons ':enable (enable msg))
    (cl:cons ':target (target msg))
))
