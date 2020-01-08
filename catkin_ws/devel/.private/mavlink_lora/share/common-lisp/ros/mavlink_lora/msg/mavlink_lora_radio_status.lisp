; Auto-generated. Do not edit!


(cl:in-package mavlink_lora-msg)


;//! \htmlinclude mavlink_lora_radio_status.msg.html

(cl:defclass <mavlink_lora_radio_status> (roslisp-msg-protocol:ros-message)
  ((rssi
    :reader rssi
    :initarg :rssi
    :type cl:fixnum
    :initform 0)
   (remrssi
    :reader remrssi
    :initarg :remrssi
    :type cl:fixnum
    :initform 0)
   (txbuf
    :reader txbuf
    :initarg :txbuf
    :type cl:fixnum
    :initform 0)
   (noise
    :reader noise
    :initarg :noise
    :type cl:fixnum
    :initform 0)
   (remnoise
    :reader remnoise
    :initarg :remnoise
    :type cl:fixnum
    :initform 0)
   (rxerrors
    :reader rxerrors
    :initarg :rxerrors
    :type cl:fixnum
    :initform 0)
   (fixed
    :reader fixed
    :initarg :fixed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass mavlink_lora_radio_status (<mavlink_lora_radio_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mavlink_lora_radio_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mavlink_lora_radio_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavlink_lora-msg:<mavlink_lora_radio_status> is deprecated: use mavlink_lora-msg:mavlink_lora_radio_status instead.")))

(cl:ensure-generic-function 'rssi-val :lambda-list '(m))
(cl:defmethod rssi-val ((m <mavlink_lora_radio_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:rssi-val is deprecated.  Use mavlink_lora-msg:rssi instead.")
  (rssi m))

(cl:ensure-generic-function 'remrssi-val :lambda-list '(m))
(cl:defmethod remrssi-val ((m <mavlink_lora_radio_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:remrssi-val is deprecated.  Use mavlink_lora-msg:remrssi instead.")
  (remrssi m))

(cl:ensure-generic-function 'txbuf-val :lambda-list '(m))
(cl:defmethod txbuf-val ((m <mavlink_lora_radio_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:txbuf-val is deprecated.  Use mavlink_lora-msg:txbuf instead.")
  (txbuf m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <mavlink_lora_radio_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:noise-val is deprecated.  Use mavlink_lora-msg:noise instead.")
  (noise m))

(cl:ensure-generic-function 'remnoise-val :lambda-list '(m))
(cl:defmethod remnoise-val ((m <mavlink_lora_radio_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:remnoise-val is deprecated.  Use mavlink_lora-msg:remnoise instead.")
  (remnoise m))

(cl:ensure-generic-function 'rxerrors-val :lambda-list '(m))
(cl:defmethod rxerrors-val ((m <mavlink_lora_radio_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:rxerrors-val is deprecated.  Use mavlink_lora-msg:rxerrors instead.")
  (rxerrors m))

(cl:ensure-generic-function 'fixed-val :lambda-list '(m))
(cl:defmethod fixed-val ((m <mavlink_lora_radio_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mavlink_lora-msg:fixed-val is deprecated.  Use mavlink_lora-msg:fixed instead.")
  (fixed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mavlink_lora_radio_status>) ostream)
  "Serializes a message object of type '<mavlink_lora_radio_status>"
  (cl:let* ((signed (cl:slot-value msg 'rssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'remrssi)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'txbuf)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noise)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remnoise)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxerrors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxerrors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mavlink_lora_radio_status>) istream)
  "Deserializes a message object of type '<mavlink_lora_radio_status>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rssi) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remrssi) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'txbuf)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'noise)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remnoise)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rxerrors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rxerrors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fixed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fixed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mavlink_lora_radio_status>)))
  "Returns string type for a message object of type '<mavlink_lora_radio_status>"
  "mavlink_lora/mavlink_lora_radio_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mavlink_lora_radio_status)))
  "Returns string type for a message object of type 'mavlink_lora_radio_status"
  "mavlink_lora/mavlink_lora_radio_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mavlink_lora_radio_status>)))
  "Returns md5sum for a message object of type '<mavlink_lora_radio_status>"
  "d652cc5b05559e196e4dd9ea309ddb4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mavlink_lora_radio_status)))
  "Returns md5sum for a message object of type 'mavlink_lora_radio_status"
  "d652cc5b05559e196e4dd9ea309ddb4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mavlink_lora_radio_status>)))
  "Returns full string definition for message of type '<mavlink_lora_radio_status>"
  (cl:format cl:nil "int8 rssi~%int8 remrssi~%uint8 txbuf~%uint8 noise~%uint8 remnoise~%uint16 rxerrors~%uint16 fixed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mavlink_lora_radio_status)))
  "Returns full string definition for message of type 'mavlink_lora_radio_status"
  (cl:format cl:nil "int8 rssi~%int8 remrssi~%uint8 txbuf~%uint8 noise~%uint8 remnoise~%uint16 rxerrors~%uint16 fixed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mavlink_lora_radio_status>))
  (cl:+ 0
     1
     1
     1
     1
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mavlink_lora_radio_status>))
  "Converts a ROS message object to a list"
  (cl:list 'mavlink_lora_radio_status
    (cl:cons ':rssi (rssi msg))
    (cl:cons ':remrssi (remrssi msg))
    (cl:cons ':txbuf (txbuf msg))
    (cl:cons ':noise (noise msg))
    (cl:cons ':remnoise (remnoise msg))
    (cl:cons ':rxerrors (rxerrors msg))
    (cl:cons ':fixed (fixed msg))
))
