;; Auto-generated. Do not edit!


(when (boundp 'mavlink_lora::mavlink_lora_gps_raw)
  (if (not (find-package "MAVLINK_LORA"))
    (make-package "MAVLINK_LORA"))
  (shadow 'mavlink_lora_gps_raw (find-package "MAVLINK_LORA")))
(unless (find-package "MAVLINK_LORA::MAVLINK_LORA_GPS_RAW")
  (make-package "MAVLINK_LORA::MAVLINK_LORA_GPS_RAW"))

(in-package "ROS")
;;//! \htmlinclude mavlink_lora_gps_raw.msg.html


(defclass mavlink_lora::mavlink_lora_gps_raw
  :super ros::object
  :slots (_time_usec _fix_type _lat _lon _alt _eph _epv _vel _cog _satellites_visible ))

(defmethod mavlink_lora::mavlink_lora_gps_raw
  (:init
   (&key
    ((:time_usec __time_usec) 0)
    ((:fix_type __fix_type) 0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:eph __eph) 0)
    ((:epv __epv) 0)
    ((:vel __vel) 0.0)
    ((:cog __cog) 0.0)
    ((:satellites_visible __satellites_visible) 0)
    )
   (send-super :init)
   (setq _time_usec (round __time_usec))
   (setq _fix_type (round __fix_type))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _eph (round __eph))
   (setq _epv (round __epv))
   (setq _vel (float __vel))
   (setq _cog (float __cog))
   (setq _satellites_visible (round __satellites_visible))
   self)
  (:time_usec
   (&optional __time_usec)
   (if __time_usec (setq _time_usec __time_usec)) _time_usec)
  (:fix_type
   (&optional __fix_type)
   (if __fix_type (setq _fix_type __fix_type)) _fix_type)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:eph
   (&optional __eph)
   (if __eph (setq _eph __eph)) _eph)
  (:epv
   (&optional __epv)
   (if __epv (setq _epv __epv)) _epv)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:cog
   (&optional __cog)
   (if __cog (setq _cog __cog)) _cog)
  (:satellites_visible
   (&optional __satellites_visible)
   (if __satellites_visible (setq _satellites_visible __satellites_visible)) _satellites_visible)
  (:serialization-length
   ()
   (+
    ;; uint64 _time_usec
    8
    ;; uint8 _fix_type
    1
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ;; uint16 _eph
    2
    ;; uint16 _epv
    2
    ;; float64 _vel
    8
    ;; float64 _cog
    8
    ;; uint8 _satellites_visible
    1
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
     ;; uint8 _fix_type
       (write-byte _fix_type s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _eph
       (write-word _eph s)
     ;; uint16 _epv
       (write-word _epv s)
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cog
       (sys::poke _cog (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _satellites_visible
       (write-byte _satellites_visible s)
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
   ;; uint8 _fix_type
     (setq _fix_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _eph
     (setq _eph (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _epv
     (setq _epv (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cog
     (setq _cog (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _satellites_visible
     (setq _satellites_visible (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mavlink_lora::mavlink_lora_gps_raw :md5sum-) "7afea41e45851f2ca34fca3f97c2d64d")
(setf (get mavlink_lora::mavlink_lora_gps_raw :datatype-) "mavlink_lora/mavlink_lora_gps_raw")
(setf (get mavlink_lora::mavlink_lora_gps_raw :definition-)
      "uint64 time_usec
uint8 fix_type
float64 lat
float64 lon
float64 alt
uint16 eph
uint16 epv
float64 vel
float64 cog
uint8 satellites_visible
")



(provide :mavlink_lora/mavlink_lora_gps_raw "7afea41e45851f2ca34fca3f97c2d64d")


