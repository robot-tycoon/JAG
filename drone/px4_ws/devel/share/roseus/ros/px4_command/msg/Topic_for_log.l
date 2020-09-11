;; Auto-generated. Do not edit!


(when (boundp 'px4_command::Topic_for_log)
  (if (not (find-package "PX4_COMMAND"))
    (make-package "PX4_COMMAND"))
  (shadow 'Topic_for_log (find-package "PX4_COMMAND")))
(unless (find-package "PX4_COMMAND::TOPIC_FOR_LOG")
  (make-package "PX4_COMMAND::TOPIC_FOR_LOG"))

(in-package "ROS")
;;//! \htmlinclude Topic_for_log.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass px4_command::Topic_for_log
  :super ros::object
  :slots (_header _time _Drone_State _Control_Command _Attitude_Reference _Control_Output ))

(defmethod px4_command::Topic_for_log
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) 0.0)
    ((:Drone_State __Drone_State) (instance px4_command::DroneState :init))
    ((:Control_Command __Control_Command) (instance px4_command::ControlCommand :init))
    ((:Attitude_Reference __Attitude_Reference) (instance px4_command::AttitudeReference :init))
    ((:Control_Output __Control_Output) (instance px4_command::ControlOutput :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (float __time))
   (setq _Drone_State __Drone_State)
   (setq _Control_Command __Control_Command)
   (setq _Attitude_Reference __Attitude_Reference)
   (setq _Control_Output __Control_Output)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:Drone_State
   (&rest __Drone_State)
   (if (keywordp (car __Drone_State))
       (send* _Drone_State __Drone_State)
     (progn
       (if __Drone_State (setq _Drone_State (car __Drone_State)))
       _Drone_State)))
  (:Control_Command
   (&rest __Control_Command)
   (if (keywordp (car __Control_Command))
       (send* _Control_Command __Control_Command)
     (progn
       (if __Control_Command (setq _Control_Command (car __Control_Command)))
       _Control_Command)))
  (:Attitude_Reference
   (&rest __Attitude_Reference)
   (if (keywordp (car __Attitude_Reference))
       (send* _Attitude_Reference __Attitude_Reference)
     (progn
       (if __Attitude_Reference (setq _Attitude_Reference (car __Attitude_Reference)))
       _Attitude_Reference)))
  (:Control_Output
   (&rest __Control_Output)
   (if (keywordp (car __Control_Output))
       (send* _Control_Output __Control_Output)
     (progn
       (if __Control_Output (setq _Control_Output (car __Control_Output)))
       _Control_Output)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _time
    4
    ;; px4_command/DroneState _Drone_State
    (send _Drone_State :serialization-length)
    ;; px4_command/ControlCommand _Control_Command
    (send _Control_Command :serialization-length)
    ;; px4_command/AttitudeReference _Attitude_Reference
    (send _Attitude_Reference :serialization-length)
    ;; px4_command/ControlOutput _Control_Output
    (send _Control_Output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; px4_command/DroneState _Drone_State
       (send _Drone_State :serialize s)
     ;; px4_command/ControlCommand _Control_Command
       (send _Control_Command :serialize s)
     ;; px4_command/AttitudeReference _Attitude_Reference
       (send _Attitude_Reference :serialize s)
     ;; px4_command/ControlOutput _Control_Output
       (send _Control_Output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; px4_command/DroneState _Drone_State
     (send _Drone_State :deserialize buf ptr-) (incf ptr- (send _Drone_State :serialization-length))
   ;; px4_command/ControlCommand _Control_Command
     (send _Control_Command :deserialize buf ptr-) (incf ptr- (send _Control_Command :serialization-length))
   ;; px4_command/AttitudeReference _Attitude_Reference
     (send _Attitude_Reference :deserialize buf ptr-) (incf ptr- (send _Attitude_Reference :serialization-length))
   ;; px4_command/ControlOutput _Control_Output
     (send _Control_Output :deserialize buf ptr-) (incf ptr- (send _Control_Output :serialization-length))
   ;;
   self)
  )

(setf (get px4_command::Topic_for_log :md5sum-) "946ec97f7fa6aeb302e66bf4d94384f1")
(setf (get px4_command::Topic_for_log :datatype-) "px4_command/Topic_for_log")
(setf (get px4_command::Topic_for_log :definition-)
      "std_msgs/Header header

## log时间
float32 time             ## [s]

DroneState Drone_State

ControlCommand Control_Command

AttitudeReference Attitude_Reference

ControlOutput Control_Output




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
MSG: px4_command/DroneState
std_msgs/Header header

## 机载电脑是否连接上飞控，true已连接，false则不是
bool connected
## 是否解锁，true为已解锁，false则不是
bool armed
## PX4飞控当前飞行模式
string mode

## 系统启动时间
float32 time_from_start             ## [s]

## 无人机状态量：位置、速度、姿态
float32[3] position                 ## [m]
float32[3] velocity                 ## [m/s]
float32[3] attitude                 ## [rad]
geometry_msgs/Quaternion attitude_q ## 四元数
float32[3] attitude_rate            ## [rad/s]
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: px4_command/ControlCommand
std_msgs/Header header

## 控制命令的编号 防止接收到错误命令， 编号应该逐次递加
uint32 Command_ID

## 控制命令的模式 
uint8 Mode
# enum Mode 控制模式枚举
uint8 Idle=0
uint8 Takeoff=1
uint8 Move_ENU=2
uint8 Move_Body=3
uint8 Hold=4
uint8 Land=5
uint8 Disarm=6
uint8 PPN_land=7
uint8 Trajectory_Tracking=8

## 控制参考量 
## 位置参考量：位置、速度、加速度、加加速度、加加加速度
## 角度参考量：偏航角、偏航角速度、偏航角加速度
TrajectoryPoint Reference_State

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
================================================================================
MSG: px4_command/AttitudeReference
std_msgs/Header header

## 位置控制器输出： 期望角度、期望角加速度
float32[3] throttle_sp                 ## [0-1] 惯性系下的油门量
float32 desired_throttle               ## [0-1] 机体系z轴
float32[3] desired_attitude            ## [rad]
geometry_msgs/Quaternion desired_att_q ## 四元数

================================================================================
MSG: px4_command/ControlOutput
std_msgs/Header header

## 位置控制器输出： 期望角度、期望角加速度
float32[3] u_l                 ## [0-1] 惯性系下的油门量
float32[3] u_d                 ## [rad]

float32[3] NE                  ## [rad]
  
float32[3] Thrust              ## [rad]  
float32[3] Throttle
")



(provide :px4_command/Topic_for_log "946ec97f7fa6aeb302e66bf4d94384f1")


