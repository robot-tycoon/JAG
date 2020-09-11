; Auto-generated. Do not edit!


(cl:in-package px4_command-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector px4_command-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'px4_command-msg:TrajectoryPoint :initial-element (cl:make-instance 'px4_command-msg:TrajectoryPoint))))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_command-msg:<Trajectory> is deprecated: use px4_command-msg:Trajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:header-val is deprecated.  Use px4_command-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:points-val is deprecated.  Use px4_command-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'px4_command-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "px4_command/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "px4_command/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "88d79e4f207dac651b2c176153821bd4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "88d79e4f207dac651b2c176153821bd4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "std_msgs/Header header~%~%TrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: px4_command/TrajectoryPoint~%std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "std_msgs/Header header~%~%TrajectoryPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: px4_command/TrajectoryPoint~%std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
))
