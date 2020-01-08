;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_mission_ack)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_mission_ack (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_MISSION_ACK")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_MISSION_ACK"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_mission_ack.msg.html


(defclass mavlink_lora::mavlink_lora_mission_ack
  :super ros::object
  :slots (_result _result_text ))

(defmethod mavlink_lora::mavlink_lora_mission_ack
  (:init
   (&key
    ((:result __result) 0)
    ((:result_text __result_text) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _result_text (string __result_text))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:result_text
   (&optional __result_text)
   (if __result_text (setq _result_text __result_text)) _result_text)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ;; string _result_text
    4 (length _result_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;; string _result_text
       (write-long (length _result_text) s) (princ _result_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _result_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_mission_ack :md5sum-) "de4e86b4da773bde5bab269127c97c0f")
(setf (get mavlink_lora::mavlink_lora_mission_ack :datatype-) "mavlink_lora/mavlink_lora_mission_ack")
(setf (get mavlink_lora::mavlink_lora_mission_ack :definition-)
      "uint8 result
string result_text

")



(provide :mavlink_lora/mavlink_lora_mission_ack "de4e86b4da773bde5bab269127c97c0f")


