; Auto-generated. Do not edit!


(cl:in-package px4_command-msg)


;//! \htmlinclude TrajectoryPoint.msg.html

(cl:defclass <TrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_from_start
    :reader time_from_start
    :initarg :time_from_start
    :type cl:float
    :initform 0.0)
   (Sub_mode
    :reader Sub_mode
    :initarg :Sub_mode
    :type cl:fixnum
    :initform 0)
   (position_ref
    :reader position_ref
    :initarg :position_ref
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (velocity_ref
    :reader velocity_ref
    :initarg :velocity_ref
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (acceleration_ref
    :reader acceleration_ref
    :initarg :acceleration_ref
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (yaw_ref
    :reader yaw_ref
    :initarg :yaw_ref
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrajectoryPoint (<TrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_command-msg:<TrajectoryPoint> is deprecated: use px4_command-msg:TrajectoryPoint instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:header-val is deprecated.  Use px4_command-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_from_start-val :lambda-list '(m))
(cl:defmethod time_from_start-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:time_from_start-val is deprecated.  Use px4_command-msg:time_from_start instead.")
  (time_from_start m))

(cl:ensure-generic-function 'Sub_mode-val :lambda-list '(m))
(cl:defmethod Sub_mode-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Sub_mode-val is deprecated.  Use px4_command-msg:Sub_mode instead.")
  (Sub_mode m))

(cl:ensure-generic-function 'position_ref-val :lambda-list '(m))
(cl:defmethod position_ref-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:position_ref-val is deprecated.  Use px4_command-msg:position_ref instead.")
  (position_ref m))

(cl:ensure-generic-function 'velocity_ref-val :lambda-list '(m))
(cl:defmethod velocity_ref-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:velocity_ref-val is deprecated.  Use px4_command-msg:velocity_ref instead.")
  (velocity_ref m))

(cl:ensure-generic-function 'acceleration_ref-val :lambda-list '(m))
(cl:defmethod acceleration_ref-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:acceleration_ref-val is deprecated.  Use px4_command-msg:acceleration_ref instead.")
  (acceleration_ref m))

(cl:ensure-generic-function 'yaw_ref-val :lambda-list '(m))
(cl:defmethod yaw_ref-val ((m <TrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:yaw_ref-val is deprecated.  Use px4_command-msg:yaw_ref instead.")
  (yaw_ref m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrajectoryPoint>)))
    "Constants for message type '<TrajectoryPoint>"
  '((:XYZ_POS . 0)
    (:XY_POS_Z_VEL . 1)
    (:XY_VEL_Z_POS . 2)
    (:XY_VEL_Z_VEL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrajectoryPoint)))
    "Constants for message type 'TrajectoryPoint"
  '((:XYZ_POS . 0)
    (:XY_POS_Z_VEL . 1)
    (:XY_VEL_Z_POS . 2)
    (:XY_VEL_Z_VEL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrajectoryPoint>) ostream)
  "Serializes a message object of type '<TrajectoryPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_from_start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sub_mode)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position_ref))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity_ref))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'acceleration_ref))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_ref))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrajectoryPoint>) istream)
  "Deserializes a message object of type '<TrajectoryPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_from_start) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Sub_mode)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'position_ref) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position_ref)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'velocity_ref) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'velocity_ref)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'acceleration_ref) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'acceleration_ref)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_ref) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrajectoryPoint>)))
  "Returns string type for a message object of type '<TrajectoryPoint>"
  "px4_command/TrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrajectoryPoint)))
  "Returns string type for a message object of type 'TrajectoryPoint"
  "px4_command/TrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrajectoryPoint>)))
  "Returns md5sum for a message object of type '<TrajectoryPoint>"
  "23bbc82696953eb06cac0e40e13f8a55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrajectoryPoint)))
  "Returns md5sum for a message object of type 'TrajectoryPoint"
  "23bbc82696953eb06cac0e40e13f8a55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrajectoryPoint>)))
  "Returns full string definition for message of type '<TrajectoryPoint>"
  (cl:format cl:nil "std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrajectoryPoint)))
  "Returns full string definition for message of type 'TrajectoryPoint"
  (cl:format cl:nil "std_msgs/Header header~%~%## 时刻： 用于轨迹追踪~%float32 time_from_start          ## [s]~%~%# sub_mode 2-bit value:~%# 0 for position, 1 for vel, 1st for xy, 2nd for z.~%#                   xy position     xy velocity~%# z position       	0b00(0)       0b10(2)~%# z velocity		0b01(1)       0b11(3)~%#~%## 控制命令的子模式 ~%## 可以选择 位置追踪、速度追踪或者其他复合模式，~%## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈~%uint8 Sub_mode~%# enum sub_mode~%uint8 XYZ_POS = 0~%uint8 XY_POS_Z_VEL = 1~%uint8 XY_VEL_Z_POS = 2~%uint8 XY_VEL_Z_VEL = 3~%~%## 参考量：位置、速度、加速度、加加速度、加加加速度~%float32[3] position_ref          ## [m]~%float32[3] velocity_ref          ## [m/s]~%float32[3] acceleration_ref      ## [m/s^2]~%## float32[3] jerk_ref              ## [m/s^3]~%## float32[3] snap_ref              ## [m/s^4]~%~%## 角度参考量：偏航角、偏航角速度、偏航角加速度~%float32 yaw_ref                  ## [rad]~%## float32 yaw_rate_ref             ## [rad/s] ~%## float32 yaw_acceleration_ref     ## [rad/s] ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrajectoryPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position_ref) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity_ref) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'acceleration_ref) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'TrajectoryPoint
    (cl:cons ':header (header msg))
    (cl:cons ':time_from_start (time_from_start msg))
    (cl:cons ':Sub_mode (Sub_mode msg))
    (cl:cons ':position_ref (position_ref msg))
    (cl:cons ':velocity_ref (velocity_ref msg))
    (cl:cons ':acceleration_ref (acceleration_ref msg))
    (cl:cons ':yaw_ref (yaw_ref msg))
))
