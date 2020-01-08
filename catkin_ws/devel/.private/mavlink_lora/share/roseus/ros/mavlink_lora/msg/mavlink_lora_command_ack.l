;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_command_ack)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_command_ack (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_ACK")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_COMMAND_ACK"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_command_ack.msg.html


(defclass mavlink_lora::mavlink_lora_command_ack
  :super ros::object
  :slots (_command _result _result_text ))

(defmethod mavlink_lora::mavlink_lora_command_ack
  (:init
   (&key
    ((:command __command) 0)
    ((:result __result) 0)
    ((:result_text __result_text) "")
    )
   (send-super :init)
   (setq _command (round __command))
   (setq _result (round __result))
   (setq _result_text (string __result_text))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:result_text
   (&optional __result_text)
   (if __result_text (setq _result_text __result_text)) _result_text)
  (:serialization-length
   ()
   (+
    ;; uint16 _command
    2
    ;; uint8 _result
    1
    ;; string _result_text
    4 (length _result_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _command
       (write-word _command s)
     ;; uint8 _result
       (write-byte _result s)
     ;; string _result_text
       (write-long (length _result_text) s) (princ _result_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _command
     (setq _command (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _result_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_command_ack :md5sum-) "fbb9a325c6db9b794fc5e665d97651ea")
(setf (get mavlink_lora::mavlink_lora_command_ack :datatype-) "mavlink_lora/mavlink_lora_command_ack")
(setf (get mavlink_lora::mavlink_lora_command_ack :definition-)
      "uint16 command
uint8 result
string result_text
")



(provide :mavlink_lora/mavlink_lora_command_ack "fbb9a325c6db9b794fc5e665d97651ea")


