;; Auto-generated. Do not edit!


(when (boundp 'px4_command::ControlOutput)
  (if (not (find-package "PX4_COMMAND"))
    (make-package "PX4_COMMAND"))
  (shadow 'ControlOutput (find-package "PX4_COMMAND")))
(unless (find-package "PX4_COMMAND::CONTROLOUTPUT")
  (make-package "PX4_COMMAND::CONTROLOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude ControlOutput.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass px4_command::ControlOutput
  :super ros::object
  :slots (_header _u_l _u_d _NE _Thrust _Throttle ))

(defmethod px4_command::ControlOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:u_l __u_l) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:u_d __u_d) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:NE __NE) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:Thrust __Thrust) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:Throttle __Throttle) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _u_l __u_l)
   (setq _u_d __u_d)
   (setq _NE __NE)
   (setq _Thrust __Thrust)
   (setq _Throttle __Throttle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:u_l
   (&optional __u_l)
   (if __u_l (setq _u_l __u_l)) _u_l)
  (:u_d
   (&optional __u_d)
   (if __u_d (setq _u_d __u_d)) _u_d)
  (:NE
   (&optional __NE)
   (if __NE (setq _NE __NE)) _NE)
  (:Thrust
   (&optional __Thrust)
   (if __Thrust (setq _Thrust __Thrust)) _Thrust)
  (:Throttle
   (&optional __Throttle)
   (if __Throttle (setq _Throttle __Throttle)) _Throttle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[3] _u_l
    (* 4    3)
    ;; float32[3] _u_d
    (* 4    3)
    ;; float32[3] _NE
    (* 4    3)
    ;; float32[3] _Thrust
    (* 4    3)
    ;; float32[3] _Throttle
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[3] _u_l
     (dotimes (i 3)
       (sys::poke (elt _u_l i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _u_d
     (dotimes (i 3)
       (sys::poke (elt _u_d i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _NE
     (dotimes (i 3)
       (sys::poke (elt _NE i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _Thrust
     (dotimes (i 3)
       (sys::poke (elt _Thrust i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _Throttle
     (dotimes (i 3)
       (sys::poke (elt _Throttle i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[3] _u_l
   (dotimes (i (length _u_l))
     (setf (elt _u_l i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _u_d
   (dotimes (i (length _u_d))
     (setf (elt _u_d i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _NE
   (dotimes (i (length _NE))
     (setf (elt _NE i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _Thrust
   (dotimes (i (length _Thrust))
     (setf (elt _Thrust i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _Throttle
   (dotimes (i (length _Throttle))
     (setf (elt _Throttle i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get px4_command::ControlOutput :md5sum-) "7758700dc789f64b57bfaea5e1096d7b")
(setf (get px4_command::ControlOutput :datatype-) "px4_command/ControlOutput")
(setf (get px4_command::ControlOutput :definition-)
      "std_msgs/Header header

## 位置控制器输出： 期望角度、期望角加速度
float32[3] u_l                 ## [0-1] 惯性系下的油门量
float32[3] u_d                 ## [rad]

float32[3] NE                  ## [rad]
  
float32[3] Thrust              ## [rad]  
float32[3] Throttle
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :px4_command/ControlOutput "7758700dc789f64b57bfaea5e1096d7b")


