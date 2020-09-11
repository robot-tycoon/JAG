; Auto-generated. Do not edit!


(cl:in-package px4_command-msg)


;//! \htmlinclude AttitudeReference.msg.html

(cl:defclass <AttitudeReference> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle_sp
    :reader throttle_sp
    :initarg :throttle_sp
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (desired_throttle
    :reader desired_throttle
    :initarg :desired_throttle
    :type cl:float
    :initform 0.0)
   (desired_attitude
    :reader desired_attitude
    :initarg :desired_attitude
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (desired_att_q
    :reader desired_att_q
    :initarg :desired_att_q
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass AttitudeReference (<AttitudeReference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttitudeReference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttitudeReference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_command-msg:<AttitudeReference> is deprecated: use px4_command-msg:AttitudeReference instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AttitudeReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:header-val is deprecated.  Use px4_command-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle_sp-val :lambda-list '(m))
(cl:defmethod throttle_sp-val ((m <AttitudeReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:throttle_sp-val is deprecated.  Use px4_command-msg:throttle_sp instead.")
  (throttle_sp m))

(cl:ensure-generic-function 'desired_throttle-val :lambda-list '(m))
(cl:defmethod desired_throttle-val ((m <AttitudeReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:desired_throttle-val is deprecated.  Use px4_command-msg:desired_throttle instead.")
  (desired_throttle m))

(cl:ensure-generic-function 'desired_attitude-val :lambda-list '(m))
(cl:defmethod desired_attitude-val ((m <AttitudeReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:desired_attitude-val is deprecated.  Use px4_command-msg:desired_attitude instead.")
  (desired_attitude m))

(cl:ensure-generic-function 'desired_att_q-val :lambda-list '(m))
(cl:defmethod desired_att_q-val ((m <AttitudeReference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:desired_att_q-val is deprecated.  Use px4_command-msg:desired_att_q instead.")
  (desired_att_q m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttitudeReference>) ostream)
  "Serializes a message object of type '<AttitudeReference>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'throttle_sp))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'desired_attitude))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'desired_att_q) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttitudeReference>) istream)
  "Deserializes a message object of type '<AttitudeReference>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'throttle_sp) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'throttle_sp)))
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
    (cl:setf (cl:slot-value msg 'desired_throttle) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'desired_attitude) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'desired_attitude)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'desired_att_q) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttitudeReference>)))
  "Returns string type for a message object of type '<AttitudeReference>"
  "px4_command/AttitudeReference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeReference)))
  "Returns string type for a message object of type 'AttitudeReference"
  "px4_command/AttitudeReference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttitudeReference>)))
  "Returns md5sum for a message object of type '<AttitudeReference>"
  "e58702438e0c601131590714878133df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttitudeReference)))
  "Returns md5sum for a message object of type 'AttitudeReference"
  "e58702438e0c601131590714878133df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttitudeReference>)))
  "Returns full string definition for message of type '<AttitudeReference>"
  (cl:format cl:nil "std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] throttle_sp                 ## [0-1] 惯性系下的油门量~%float32 desired_throttle               ## [0-1] 机体系z轴~%float32[3] desired_attitude            ## [rad]~%geometry_msgs/Quaternion desired_att_q ## 四元数~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttitudeReference)))
  "Returns full string definition for message of type 'AttitudeReference"
  (cl:format cl:nil "std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] throttle_sp                 ## [0-1] 惯性系下的油门量~%float32 desired_throttle               ## [0-1] 机体系z轴~%float32[3] desired_attitude            ## [rad]~%geometry_msgs/Quaternion desired_att_q ## 四元数~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttitudeReference>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'throttle_sp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'desired_attitude) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'desired_att_q))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttitudeReference>))
  "Converts a ROS message object to a list"
  (cl:list 'AttitudeReference
    (cl:cons ':header (header msg))
    (cl:cons ':throttle_sp (throttle_sp msg))
    (cl:cons ':desired_throttle (desired_throttle msg))
    (cl:cons ':desired_attitude (desired_attitude msg))
    (cl:cons ':desired_att_q (desired_att_q msg))
))
