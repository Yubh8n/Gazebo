; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_mission_ack.msg.html

(cl:defclass <mavlink_lora_mission_ack> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0)
   (result_text
    :reader result_text
    :initarg :result_text
    :type cl:string
    :initform ""))
)

(cl:defclass mavlink_lora_mission_ack (<mavlink_lora_mission_ack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_mission_ack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_mission_ack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_mission_ack> is deprecated: use mavlink_lora-msg:mavlink_lora_mission_ack instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <mavlink_lora_mission_ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:result-val is deprecated.  Use mavlink_lora-msg:result instead.")
  (result m))

(cl:ensure-generic-function 'result_text-val :lambda-list '(m))
(cl:defmethod result_text-val ((m <mavlink_lora_mission_ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:result_text-val is deprecated.  Use mavlink_lora-msg:result_text instead.")
  (result_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_mission_ack>) ostream)
  "Serializes a message object of type '<mavlink_lora_mission_ack>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result_text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_mission_ack>) istream)
  "Deserializes a message object of type '<mavlink_lora_mission_ack>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_mission_ack>)))
  "Returns string type for a message object of type '<mavlink_lora_mission_ack>"
  "mavlink_lora/mavlink_lora_mission_ack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_mission_ack)))
  "Returns string type for a message object of type 'mavlink_lora_mission_ack"
  "mavlink_lora/mavlink_lora_mission_ack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_mission_ack>)))
  "Returns md5sum for a message object of type '<mavlink_lora_mission_ack>"
  "de4e86b4da773bde5bab269127c97c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_mission_ack)))
  "Returns md5sum for a message object of type 'mavlink_lora_mission_ack"
  "de4e86b4da773bde5bab269127c97c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_mission_ack>)))
  "Returns full string definition for message of type '<mavlink_lora_mission_ack>"
  (cl:format cl:nil "uint8 result~%string result_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_mission_ack)))
  "Returns full string definition for message of type 'mavlink_lora_mission_ack"
  (cl:format cl:nil "uint8 result~%string result_text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_mission_ack>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'result_text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_mission_ack>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_mission_ack
    (cl:cons ':result (result msg))
    (cl:cons ':result_text (result_text msg))
))
