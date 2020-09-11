;; Auto-generated. Do not edit!


(when (boundp 'px4_command::Trajectory)
  (if (not (find-package "PX4_COMMAND"))
    (make-package "PX4_COMMAND"))
  (shadow 'Trajectory (find-package "PX4_COMMAND")))
(unless (find-package "PX4_COMMAND::TRAJECTORY")
  (make-package "PX4_COMMAND::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass px4_command::Trajectory
  :super ros::object
  :slots (_header _points ))

(defmethod px4_command::Trajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance px4_command::TrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; px4_command/TrajectoryPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; px4_command/TrajectoryPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; px4_command/TrajectoryPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance px4_command::TrajectoryPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get px4_command::Trajectory :md5sum-) "88d79e4f207dac651b2c176153821bd4")
(setf (get px4_command::Trajectory :datatype-) "px4_command/Trajectory")
(setf (get px4_command::Trajectory :definition-)
      "std_msgs/Header header

TrajectoryPoint[] points

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
MSG: px4_command/TrajectoryPoint
std_msgs/Header header

## 时刻： 用于轨迹追踪
float32 time_from_start          ## [s]

# sub_mode 2-bit value:
# 0 for position, 1 for vel, 1st for xy, 2nd for z.
#                   xy position     xy velocity
# z position       	0b00(0)       0b10(2)
# z velocity		0b01(1)       0b11(3)
#
## 控制命令的子模式 
## 可以选择 位置追踪、速度追踪或者其他复合模式，
## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈
uint8 Sub_mode
# enum sub_mode
uint8 XYZ_POS = 0
uint8 XY_POS_Z_VEL = 1
uint8 XY_VEL_Z_POS = 2
uint8 XY_VEL_Z_VEL = 3

## 参考量：位置、速度、加速度、加加速度、加加加速度
float32[3] position_ref          ## [m]
float32[3] velocity_ref          ## [m/s]
float32[3] acceleration_ref      ## [m/s^2]
## float32[3] jerk_ref              ## [m/s^3]
## float32[3] snap_ref              ## [m/s^4]

## 角度参考量：偏航角、偏航角速度、偏航角加速度
float32 yaw_ref                  ## [rad]
## float32 yaw_rate_ref             ## [rad/s] 
## float32 yaw_acceleration_ref     ## [rad/s] 
")



(provide :px4_command/Trajectory "88d79e4f207dac651b2c176153821bd4")


