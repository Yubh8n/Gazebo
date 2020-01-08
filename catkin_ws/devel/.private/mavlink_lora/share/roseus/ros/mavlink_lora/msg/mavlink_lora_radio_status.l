;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_radio_status)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_radio_status (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_RADIO_STATUS")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_RADIO_STATUS"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_radio_status.msg.html


(defclass mavlink_lora::mavlink_lora_radio_status
  :super ros::object
  :slots (_rssi _remrssi _txbuf _noise _remnoise _rxerrors _fixed ))

(defmethod mavlink_lora::mavlink_lora_radio_status
  (:init
   (&key
    ((:rssi __rssi) 0)
    ((:remrssi __remrssi) 0)
    ((:txbuf __txbuf) 0)
    ((:noise __noise) 0)
    ((:remnoise __remnoise) 0)
    ((:rxerrors __rxerrors) 0)
    ((:fixed __fixed) 0)
    )
   (send-super :init)
   (setq _rssi (round __rssi))
   (setq _remrssi (round __remrssi))
   (setq _txbuf (round __txbuf))
   (setq _noise (round __noise))
   (setq _remnoise (round __remnoise))
   (setq _rxerrors (round __rxerrors))
   (setq _fixed (round __fixed))
   self)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:remrssi
   (&optional __remrssi)
   (if __remrssi (setq _remrssi __remrssi)) _remrssi)
  (:txbuf
   (&optional __txbuf)
   (if __txbuf (setq _txbuf __txbuf)) _txbuf)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:remnoise
   (&optional __remnoise)
   (if __remnoise (setq _remnoise __remnoise)) _remnoise)
  (:rxerrors
   (&optional __rxerrors)
   (if __rxerrors (setq _rxerrors __rxerrors)) _rxerrors)
  (:fixed
   (&optional __fixed)
   (if __fixed (setq _fixed __fixed)) _fixed)
  (:serialization-length
   ()
   (+
    ;; int8 _rssi
    1
    ;; int8 _remrssi
    1
    ;; uint8 _txbuf
    1
    ;; uint8 _noise
    1
    ;; uint8 _remnoise
    1
    ;; uint16 _rxerrors
    2
    ;; uint16 _fixed
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _rssi
       (write-byte _rssi s)
     ;; int8 _remrssi
       (write-byte _remrssi s)
     ;; uint8 _txbuf
       (write-byte _txbuf s)
     ;; uint8 _noise
       (write-byte _noise s)
     ;; uint8 _remnoise
       (write-byte _remnoise s)
     ;; uint16 _rxerrors
       (write-word _rxerrors s)
     ;; uint16 _fixed
       (write-word _fixed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _rssi
     (setq _rssi (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rssi 127) (setq _rssi (- _rssi 256)))
   ;; int8 _remrssi
     (setq _remrssi (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _remrssi 127) (setq _remrssi (- _remrssi 256)))
   ;; uint8 _txbuf
     (setq _txbuf (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _noise
     (setq _noise (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _remnoise
     (setq _remnoise (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _rxerrors
     (setq _rxerrors (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _fixed
     (setq _fixed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_radio_status :md5sum-) "d652cc5b05559e196e4dd9ea309ddb4b")
(setf (get mavlink_lora::mavlink_lora_radio_status :datatype-) "mavlink_lora/mavlink_lora_radio_status")
(setf (get mavlink_lora::mavlink_lora_radio_status :definition-)
      "int8 rssi
int8 remrssi
uint8 txbuf
uint8 noise
uint8 remnoise
uint16 rxerrors
uint16 fixed
")



(provide :mavlink_lora/mavlink_lora_radio_status "d652cc5b05559e196e4dd9ea309ddb4b")


