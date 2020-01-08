;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_altitude)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_altitude (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_ALTITUDE")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_ALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_altitude.msg.html


(defclass mavlink_lora::mavlink_lora_altitude
  :super ros::object
  :slots (_time_usec _altitude_monotonic _altitude_amsl _altitude_local _altitude_relative _altitude_terrain _bottom_clearance ))

(defmethod mavlink_lora::mavlink_lora_altitude
  (:init
   (&key
    ((:time_usec __time_usec) 0)
    ((:altitude_monotonic __altitude_monotonic) 0.0)
    ((:altitude_amsl __altitude_amsl) 0.0)
    ((:altitude_local __altitude_local) 0.0)
    ((:altitude_relative __altitude_relative) 0.0)
    ((:altitude_terrain __altitude_terrain) 0.0)
    ((:bottom_clearance __bottom_clearance) 0.0)
    )
   (send-super :init)
   (setq _time_usec (round __time_usec))
   (setq _altitude_monotonic (float __altitude_monotonic))
   (setq _altitude_amsl (float __altitude_amsl))
   (setq _altitude_local (float __altitude_local))
   (setq _altitude_relative (float __altitude_relative))
   (setq _altitude_terrain (float __altitude_terrain))
   (setq _bottom_clearance (float __bottom_clearance))
   self)
  (:time_usec
   (&optional __time_usec)
   (if __time_usec (setq _time_usec __time_usec)) _time_usec)
  (:altitude_monotonic
   (&optional __altitude_monotonic)
   (if __altitude_monotonic (setq _altitude_monotonic __altitude_monotonic)) _altitude_monotonic)
  (:altitude_amsl
   (&optional __altitude_amsl)
   (if __altitude_amsl (setq _altitude_amsl __altitude_amsl)) _altitude_amsl)
  (:altitude_local
   (&optional __altitude_local)
   (if __altitude_local (setq _altitude_local __altitude_local)) _altitude_local)
  (:altitude_relative
   (&optional __altitude_relative)
   (if __altitude_relative (setq _altitude_relative __altitude_relative)) _altitude_relative)
  (:altitude_terrain
   (&optional __altitude_terrain)
   (if __altitude_terrain (setq _altitude_terrain __altitude_terrain)) _altitude_terrain)
  (:bottom_clearance
   (&optional __bottom_clearance)
   (if __bottom_clearance (setq _bottom_clearance __bottom_clearance)) _bottom_clearance)
  (:serialization-length
   ()
   (+
    ;; uint64 _time_usec
    8
    ;; float64 _altitude_monotonic
    8
    ;; float64 _altitude_amsl
    8
    ;; float64 _altitude_local
    8
    ;; float64 _altitude_relative
    8
    ;; float64 _altitude_terrain
    8
    ;; float64 _bottom_clearance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _time_usec
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_usec (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_usec) (= (length (_time_usec . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_usec . bv) 0) 0) s)
              (write-long (ash (elt (_time_usec . bv) 1) -1) s))
             ((and (class _time_usec) (= (length (_time_usec . bv)) 1)) ;; big1
              (write-long (elt (_time_usec . bv) 0) s)
              (write-long (if (>= _time_usec 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_usec s)(write-long (if (>= _time_usec 0) 0 #xffffffff) s)))
     ;; float64 _altitude_monotonic
       (sys::poke _altitude_monotonic (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude_amsl
       (sys::poke _altitude_amsl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude_local
       (sys::poke _altitude_local (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude_relative
       (sys::poke _altitude_relative (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude_terrain
       (sys::poke _altitude_terrain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bottom_clearance
       (sys::poke _bottom_clearance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _time_usec
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_usec (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_usec (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _altitude_monotonic
     (setq _altitude_monotonic (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude_amsl
     (setq _altitude_amsl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude_local
     (setq _altitude_local (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude_relative
     (setq _altitude_relative (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude_terrain
     (setq _altitude_terrain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bottom_clearance
     (setq _bottom_clearance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_altitude :md5sum-) "d974842e562ac493e92f77dd7721717e")
(setf (get mavlink_lora::mavlink_lora_altitude :datatype-) "mavlink_lora/mavlink_lora_altitude")
(setf (get mavlink_lora::mavlink_lora_altitude :definition-)
      "uint64 time_usec
float64 altitude_monotonic
float64 altitude_amsl
float64 altitude_local
float64 altitude_relative
float64 altitude_terrain
float64 bottom_clearance

")



(provide :mavlink_lora/mavlink_lora_altitude "d974842e562ac493e92f77dd7721717e")


