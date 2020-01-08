;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_statustext)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_statustext (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_STATUSTEXT")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_STATUSTEXT"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_statustext.msg.html


(defclass mavlink_lora::mavlink_lora_statustext
  :super ros::object
  :slots (_severity _text ))

(defmethod mavlink_lora::mavlink_lora_statustext
  (:init
   (&key
    ((:severity __severity) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _severity (round __severity))
   (setq _text (string __text))
   self)
  (:severity
   (&optional __severity)
   (if __severity (setq _severity __severity)) _severity)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; uint8 _severity
    1
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _severity
       (write-byte _severity s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _severity
     (setq _severity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_statustext :md5sum-) "308abed4c40746634f6b52263735fad3")
(setf (get mavlink_lora::mavlink_lora_statustext :datatype-) "mavlink_lora/mavlink_lora_statustext")
(setf (get mavlink_lora::mavlink_lora_statustext :definition-)
      "uint8 severity
string text
")



(provide :mavlink_lora/mavlink_lora_statustext "308abed4c40746634f6b52263735fad3")


