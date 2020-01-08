; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_statustext.msg.html

(cl:defclass <mavlink_lora_statustext> (roslisp-msg-protocol:ros-message)
  ((severity
    :reader severity
    :initarg :severity
    :type cl:fixnum
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass mavlink_lora_statustext (<mavlink_lora_statustext>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_statustext>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_statustext)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_statustext> is deprecated: use mavlink_lora-msg:mavlink_lora_statustext instead.")))

(cl:ensure-generic-function 'severity-val :lambda-list '(m))
(cl:defmethod severity-val ((m <mavlink_lora_statustext>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:severity-val is deprecated.  Use mavlink_lora-msg:severity instead.")
  (severity m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <mavlink_lora_statustext>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:text-val is deprecated.  Use mavlink_lora-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_statustext>) ostream)
  "Serializes a message object of type '<mavlink_lora_statustext>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_statustext>) istream)
  "Deserializes a message object of type '<mavlink_lora_statustext>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_statustext>)))
  "Returns string type for a message object of type '<mavlink_lora_statustext>"
  "mavlink_lora/mavlink_lora_statustext")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_statustext)))
  "Returns string type for a message object of type 'mavlink_lora_statustext"
  "mavlink_lora/mavlink_lora_statustext")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_statustext>)))
  "Returns md5sum for a message object of type '<mavlink_lora_statustext>"
  "308abed4c40746634f6b52263735fad3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_statustext)))
  "Returns md5sum for a message object of type 'mavlink_lora_statustext"
  "308abed4c40746634f6b52263735fad3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_statustext>)))
  "Returns full string definition for message of type '<mavlink_lora_statustext>"
  (cl:format cl:nil "uint8 severity~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_statustext)))
  "Returns full string definition for message of type 'mavlink_lora_statustext"
  (cl:format cl:nil "uint8 severity~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_statustext>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_statustext>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_statustext
    (cl:cons ':severity (severity msg))
    (cl:cons ':text (text msg))
))
