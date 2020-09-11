; Auto-generated. Do not edit!


(cl:in-package px4_command-msg)


;//! \htmlinclude Topic_for_log.msg.html

(cl:defclass <Topic_for_log> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (Drone_State
    :reader Drone_State
    :initarg :Drone_State
    :type px4_command-msg:DroneState
    :initform (cl:make-instance 'px4_command-msg:DroneState))
   (Control_Command
    :reader Control_Command
    :initarg :Control_Command
    :type px4_command-msg:ControlCommand
    :initform (cl:make-instance 'px4_command-msg:ControlCommand))
   (Attitude_Reference
    :reader Attitude_Reference
    :initarg :Attitude_Reference
    :type px4_command-msg:AttitudeReference
    :initform (cl:make-instance 'px4_command-msg:AttitudeReference))
   (Control_Output
    :reader Control_Output
    :initarg :Control_Output
    :type px4_command-msg:ControlOutput
    :initform (cl:make-instance 'px4_command-msg:ControlOutput)))
)

(cl:defclass Topic_for_log (<Topic_for_log>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Topic_for_log>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Topic_for_log)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_command-msg:<Topic_for_log> is deprecated: use px4_command-msg:Topic_for_log instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Topic_for_log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:header-val is deprecated.  Use px4_command-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Topic_for_log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:time-val is deprecated.  Use px4_command-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'Drone_State-val :lambda-list '(m))
(cl:defmethod Drone_State-val ((m <Topic_for_log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Drone_State-val is deprecated.  Use px4_command-msg:Drone_State instead.")
  (Drone_State m))

(cl:ensure-generic-function 'Control_Command-val :lambda-list '(m))
(cl:defmethod Control_Command-val ((m <Topic_for_log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Control_Command-val is deprecated.  Use px4_command-msg:Control_Command instead.")
  (Control_Command m))

(cl:ensure-generic-function 'Attitude_Reference-val :lambda-list '(m))
(cl:defmethod Attitude_Reference-val ((m <Topic_for_log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Attitude_Reference-val is deprecated.  Use px4_command-msg:Attitude_Reference instead.")
  (Attitude_Reference m))

(cl:ensure-generic-function 'Control_Output-val :lambda-list '(m))
(cl:defmethod Control_Output-val ((m <Topic_for_log>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Control_Output-val is deprecated.  Use px4_command-msg:Control_Output instead.")
  (Control_Output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Topic_for_log>) ostream)
  "Serializes a message object of type '<Topic_for_log>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Drone_State) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Control_Command) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Attitude_Reference) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Control_Output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Topic_for_log>) istream)
  "Deserializes a message object of type '<Topic_for_log>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Drone_State) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Control_Command) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Attitude_Reference) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Control_Output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Topic_for_log>)))
  "Returns string type for a message object of type '<Topic_for_log>"
  "px4_command/Topic_for_log")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Topic_for_log)))
  "Returns string type for a message object of type 'Topic_for_log"
  "px4_command/Topic_for_log")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Topic_for_log>)))
  "Returns md5sum for a message object of type '<Topic_for_log>"
  "946ec97f7fa6aeb302e66bf4d94384f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Topic_for_log)))
  "Returns md5sum for a message object of type 'Topic_for_log"
  "946ec97f7fa6aeb302e66bf4d94384f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Topic_for_log>)))
  "Returns full string definition for message of type '<Topic_for_log>"
  (cl:format cl:nil "std_msgs/Header header~%~%## log时间~%float32 time             ## [s]~%~%DroneState Drone_State~%~%ControlCommand Control_Command~%~%AttitudeReference Attitude_Reference~%~%ControlOutput Control_Output~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: px4_command/DroneState~%std_msgs/Header header~%~%## 机载电脑是否连接上飞控，true已连接，false则不是~%bool connected~%## 是否解锁，true为已解锁，false则不是~%bool armed~%## PX4飞控当前飞行模式~%string mode~%~%## 系统启动时间~%float32 time_from_start             ## [s]~%~%## 无人机状态量：位置、速度、姿态~%float32[3] position                 ## [m]~%float32[3] velocity                 ## [m/s]~%float32[3] attitude                 ## [rad]~%geometry_msgs/Quaternion attitude_q ## 四元数~%float32[3] attitude_rate            ## [rad/s]~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: px4_command/ControlCommand~%std_msgs/Header header~%~%## 控制命令的编号 防止接收到错误命令， 编号应该逐次递加~%uint32 Command_ID~%~%## 控制命令的模式 ~%uint8 Mode~%# enum Mode 控制模式枚举~%uint8 Idle=0~%uint8 Takeoff=1~%uint8 Move_ENU=2~%uint8 Move_Body=3~%uint8 Hold=4~%uint8 Land=5~%uint8 Disarm=6~%uint8 PPN_land=7~%uint8 Trajectory_Tracking=8~%~%## 控制参考量 ~%## 位置参考量：位置、速度、加速度、加加速度、加加加速度~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%TrajectoryPoint Reference_State~%~%================================================================================~%MSG: px4_command/TrajectoryPoint~%std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%================================================================================~%MSG: px4_command/AttitudeReference~%std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] throttle_sp                 ## [0-1] 惯性系下的油门量~%float32 desired_throttle               ## [0-1] 机体系z轴~%float32[3] desired_attitude            ## [rad]~%geometry_msgs/Quaternion desired_att_q ## 四元数~%~%================================================================================~%MSG: px4_command/ControlOutput~%std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] u_l                 ## [0-1] 惯性系下的油门量~%float32[3] u_d                 ## [rad]~%~%float32[3] NE                  ## [rad]~%  ~%float32[3] Thrust              ## [rad]  ~%float32[3] Throttle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Topic_for_log)))
  "Returns full string definition for message of type 'Topic_for_log"
  (cl:format cl:nil "std_msgs/Header header~%~%## log时间~%float32 time             ## [s]~%~%DroneState Drone_State~%~%ControlCommand Control_Command~%~%AttitudeReference Attitude_Reference~%~%ControlOutput Control_Output~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: px4_command/DroneState~%std_msgs/Header header~%~%## 机载电脑是否连接上飞控，true已连接，false则不是~%bool connected~%## 是否解锁，true为已解锁，false则不是~%bool armed~%## PX4飞控当前飞行模式~%string mode~%~%## 系统启动时间~%float32 time_from_start             ## [s]~%~%## 无人机状态量：位置、速度、姿态~%float32[3] position                 ## [m]~%float32[3] velocity                 ## [m/s]~%float32[3] attitude                 ## [rad]~%geometry_msgs/Quaternion attitude_q ## 四元数~%float32[3] attitude_rate            ## [rad/s]~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: px4_command/ControlCommand~%std_msgs/Header header~%~%## 控制命令的编号 防止接收到错误命令， 编号应该逐次递加~%uint32 Command_ID~%~%## 控制命令的模式 ~%uint8 Mode~%# enum Mode 控制模式枚举~%uint8 Idle=0~%uint8 Takeoff=1~%uint8 Move_ENU=2~%uint8 Move_Body=3~%uint8 Hold=4~%uint8 Land=5~%uint8 Disarm=6~%uint8 PPN_land=7~%uint8 Trajectory_Tracking=8~%~%## 控制参考量 ~%## 位置参考量：位置、速度、加速度、加加速度、加加加速度~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%TrajectoryPoint Reference_State~%~%================================================================================~%MSG: px4_command/TrajectoryPoint~%std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%================================================================================~%MSG: px4_command/AttitudeReference~%std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] throttle_sp                 ## [0-1] 惯性系下的油门量~%float32 desired_throttle               ## [0-1] 机体系z轴~%float32[3] desired_attitude            ## [rad]~%geometry_msgs/Quaternion desired_att_q ## 四元数~%~%================================================================================~%MSG: px4_command/ControlOutput~%std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] u_l                 ## [0-1] 惯性系下的油门量~%float32[3] u_d                 ## [rad]~%~%float32[3] NE                  ## [rad]~%  ~%float32[3] Thrust              ## [rad]  ~%float32[3] Throttle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Topic_for_log>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Drone_State))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Control_Command))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Attitude_Reference))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Control_Output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Topic_for_log>))
  "Converts a ROS message object to a list"
  (cl:list 'Topic_for_log
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':Drone_State (Drone_State msg))
    (cl:cons ':Control_Command (Control_Command msg))
    (cl:cons ':Attitude_Reference (Attitude_Reference msg))
    (cl:cons ':Control_Output (Control_Output msg))
))
