; Auto-generated. Do not edit!


(cl:in-package px4_command-msg)


;//! \htmlinclude ControlCommand.msg.html

(cl:defclass <ControlCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Command_ID
    :reader Command_ID
    :initarg :Command_ID
    :type cl:integer
    :initform 0)
   (Mode
    :reader Mode
    :initarg :Mode
    :type cl:fixnum
    :initform 0)
   (Reference_State
    :reader Reference_State
    :initarg :Reference_State
    :type px4_command-msg:TrajectoryPoint
    :initform (cl:make-instance 'px4_command-msg:TrajectoryPoint)))
)

(cl:defclass ControlCommand (<ControlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_command-msg:<ControlCommand> is deprecated: use px4_command-msg:ControlCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:header-val is deprecated.  Use px4_command-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Command_ID-val :lambda-list '(m))
(cl:defmethod Command_ID-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Command_ID-val is deprecated.  Use px4_command-msg:Command_ID instead.")
  (Command_ID m))

(cl:ensure-generic-function 'Mode-val :lambda-list '(m))
(cl:defmethod Mode-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Mode-val is deprecated.  Use px4_command-msg:Mode instead.")
  (Mode m))

(cl:ensure-generic-function 'Reference_State-val :lambda-list '(m))
(cl:defmethod Reference_State-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Reference_State-val is deprecated.  Use px4_command-msg:Reference_State instead.")
  (Reference_State m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControlCommand>)))
    "Constants for message type '<ControlCommand>"
  '((:IDLE . 0)
    (:TAKEOFF . 1)
    (:MOVE_ENU . 2)
    (:MOVE_BODY . 3)
    (:HOLD . 4)
    (:LAND . 5)
    (:DISARM . 6)
    (:PPN_LAND . 7)
    (:TRAJECTORY_TRACKING . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControlCommand)))
    "Constants for message type 'ControlCommand"
  '((:IDLE . 0)
    (:TAKEOFF . 1)
    (:MOVE_ENU . 2)
    (:MOVE_BODY . 3)
    (:HOLD . 4)
    (:LAND . 5)
    (:DISARM . 6)
    (:PPN_LAND . 7)
    (:TRAJECTORY_TRACKING . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommand>) ostream)
  "Serializes a message object of type '<ControlCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Command_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Command_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Command_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Command_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Reference_State) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommand>) istream)
  "Deserializes a message object of type '<ControlCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Command_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Command_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'Command_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'Command_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Reference_State) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommand>)))
  "Returns string type for a message object of type '<ControlCommand>"
  "px4_command/ControlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommand)))
  "Returns string type for a message object of type 'ControlCommand"
  "px4_command/ControlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommand>)))
  "Returns md5sum for a message object of type '<ControlCommand>"
  "14454c2dc6247db5552d369118c7ecf3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommand)))
  "Returns md5sum for a message object of type 'ControlCommand"
  "14454c2dc6247db5552d369118c7ecf3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommand>)))
  "Returns full string definition for message of type '<ControlCommand>"
  (cl:format cl:nil "std_msgs/Header header~%~%## 控制命令的编号 防止接收到错误命令， 编号应该逐次递加~%uint32 Command_ID~%~%## 控制命令的模式 ~%uint8 Mode~%# enum Mode 控制模式枚举~%uint8 Idle=0~%uint8 Takeoff=1~%uint8 Move_ENU=2~%uint8 Move_Body=3~%uint8 Hold=4~%uint8 Land=5~%uint8 Disarm=6~%uint8 PPN_land=7~%uint8 Trajectory_Tracking=8~%~%## 控制参考量 ~%## 位置参考量：位置、速度、加速度、加加速度、加加加速度~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%TrajectoryPoint Reference_State~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: px4_command/TrajectoryPoint~%std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommand)))
  "Returns full string definition for message of type 'ControlCommand"
  (cl:format cl:nil "std_msgs/Header header~%~%## 控制命令的编号 防止接收到错误命令， 编号应该逐次递加~%uint32 Command_ID~%~%## 控制命令的模式 ~%uint8 Mode~%# enum Mode 控制模式枚举~%uint8 Idle=0~%uint8 Takeoff=1~%uint8 Move_ENU=2~%uint8 Move_Body=3~%uint8 Hold=4~%uint8 Land=5~%uint8 Disarm=6~%uint8 PPN_land=7~%uint8 Trajectory_Tracking=8~%~%## 控制参考量 ~%## 位置参考量：位置、速度、加速度、加加速度、加加加速度~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%TrajectoryPoint Reference_State~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: px4_command/TrajectoryPoint~%std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Reference_State))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommand
    (cl:cons ':header (header msg))
    (cl:cons ':Command_ID (Command_ID msg))
    (cl:cons ':Mode (Mode msg))
    (cl:cons ':Reference_State (Reference_State msg))
))
