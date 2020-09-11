;; Auto-generated. Do not edit!


(when (boundp 'px4_command::AttitudeReference)
  (if (not (find-package "PX4_COMMAND"))
    (make-package "PX4_COMMAND"))
  (shadow 'AttitudeReference (find-package "PX4_COMMAND")))
(unless (find-package "PX4_COMMAND::ATTITUDEREFERENCE")
  (make-package "PX4_COMMAND::ATTITUDEREFERENCE"))

(in-package "ROS")
;;//! \htmlinclude AttitudeReference.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass px4_command::AttitudeReference
  :super ros::object
  :slots (_header _throttle_sp _desired_throttle _desired_attitude _desired_att_q ))

(defmethod px4_command::AttitudeReference
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle_sp __throttle_sp) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:desired_throttle __desired_throttle) 0.0)
    ((:desired_attitude __desired_attitude) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:desired_att_q __desired_att_q) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle_sp __throttle_sp)
   (setq _desired_throttle (float __desired_throttle))
   (setq _desired_attitude __desired_attitude)
   (setq _desired_att_q __desired_att_q)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle_sp
   (&optional __throttle_sp)
   (if __throttle_sp (setq _throttle_sp __throttle_sp)) _throttle_sp)
  (:desired_throttle
   (&optional __desired_throttle)
   (if __desired_throttle (setq _desired_throttle __desired_throttle)) _desired_throttle)
  (:desired_attitude
   (&optional __desired_attitude)
   (if __desired_attitude (setq _desired_attitude __desired_attitude)) _desired_attitude)
  (:desired_att_q
   (&rest __desired_att_q)
   (if (keywordp (car __desired_att_q))
       (send* _desired_att_q __desired_att_q)
     (progn
       (if __desired_att_q (setq _desired_att_q (car __desired_att_q)))
       _desired_att_q)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[3] _throttle_sp
    (* 4    3)
    ;; float32 _desired_throttle
    4
    ;; float32[3] _desired_attitude
    (* 4    3)
    ;; geometry_msgs/Quaternion _desired_att_q
    (send _desired_att_q :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[3] _throttle_sp
     (dotimes (i 3)
       (sys::poke (elt _throttle_sp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _desired_throttle
       (sys::poke _desired_throttle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _desired_attitude
     (dotimes (i 3)
       (sys::poke (elt _desired_attitude i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Quaternion _desired_att_q
       (send _desired_att_q :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[3] _throttle_sp
   (dotimes (i (length _throttle_sp))
     (setf (elt _throttle_sp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _desired_throttle
     (setq _desired_throttle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _desired_attitude
   (dotimes (i (length _desired_attitude))
     (setf (elt _desired_attitude i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; geometry_msgs/Quaternion _desired_att_q
     (send _desired_att_q :deserialize buf ptr-) (incf ptr- (send _desired_att_q :serialization-length))
   ;;
   self)
  )

(setf (get px4_command::AttitudeReference :md5sum-) "e58702438e0c601131590714878133df")
(setf (get px4_command::AttitudeReference :datatype-) "px4_command/AttitudeReference")
(setf (get px4_command::AttitudeReference :definition-)
      "std_msgs/Header header

## 位置控制器输出： 期望角度、期望角加速度
float32[3] throttle_sp                 ## [0-1] 惯性系下的油门量
float32 desired_throttle               ## [0-1] 机体系z轴
float32[3] desired_attitude            ## [rad]
geometry_msgs/Quaternion desired_att_q ## 四元数

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

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :px4_command/AttitudeReference "e58702438e0c601131590714878133df")


