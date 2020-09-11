; Auto-generated. Do not edit!


(cl:in-package px4_command-msg)


;//! \htmlinclude ControlOutput.msg.html

(cl:defclass <ControlOutput> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (u_l
    :reader u_l
    :initarg :u_l
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (u_d
    :reader u_d
    :initarg :u_d
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (NE
    :reader NE
    :initarg :NE
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (Thrust
    :reader Thrust
    :initarg :Thrust
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (Throttle
    :reader Throttle
    :initarg :Throttle
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ControlOutput (<ControlOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name px4_command-msg:<ControlOutput> is deprecated: use px4_command-msg:ControlOutput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:header-val is deprecated.  Use px4_command-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'u_l-val :lambda-list '(m))
(cl:defmethod u_l-val ((m <ControlOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:u_l-val is deprecated.  Use px4_command-msg:u_l instead.")
  (u_l m))

(cl:ensure-generic-function 'u_d-val :lambda-list '(m))
(cl:defmethod u_d-val ((m <ControlOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:u_d-val is deprecated.  Use px4_command-msg:u_d instead.")
  (u_d m))

(cl:ensure-generic-function 'NE-val :lambda-list '(m))
(cl:defmethod NE-val ((m <ControlOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:NE-val is deprecated.  Use px4_command-msg:NE instead.")
  (NE m))

(cl:ensure-generic-function 'Thrust-val :lambda-list '(m))
(cl:defmethod Thrust-val ((m <ControlOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Thrust-val is deprecated.  Use px4_command-msg:Thrust instead.")
  (Thrust m))

(cl:ensure-generic-function 'Throttle-val :lambda-list '(m))
(cl:defmethod Throttle-val ((m <ControlOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader px4_command-msg:Throttle-val is deprecated.  Use px4_command-msg:Throttle instead.")
  (Throttle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlOutput>) ostream)
  "Serializes a message object of type '<ControlOutput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'u_l))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'u_d))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'NE))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'Thrust))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'Throttle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlOutput>) istream)
  "Deserializes a message object of type '<ControlOutput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'u_l) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'u_l)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'u_d) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'u_d)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'NE) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'NE)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'Thrust) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'Thrust)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'Throttle) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'Throttle)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlOutput>)))
  "Returns string type for a message object of type '<ControlOutput>"
  "px4_command/ControlOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlOutput)))
  "Returns string type for a message object of type 'ControlOutput"
  "px4_command/ControlOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlOutput>)))
  "Returns md5sum for a message object of type '<ControlOutput>"
  "7758700dc789f64b57bfaea5e1096d7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlOutput)))
  "Returns md5sum for a message object of type 'ControlOutput"
  "7758700dc789f64b57bfaea5e1096d7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlOutput>)))
  "Returns full string definition for message of type '<ControlOutput>"
  (cl:format cl:nil "std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] u_l                 ## [0-1] 惯性系下的油门量~%float32[3] u_d                 ## [rad]~%~%float32[3] NE                  ## [rad]~%  ~%float32[3] Thrust              ## [rad]  ~%float32[3] Throttle~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlOutput)))
  "Returns full string definition for message of type 'ControlOutput"
  (cl:format cl:nil "std_msgs/Header header~%~%## 位置控制器输出： 期望角度、期望角加速度~%float32[3] u_l                 ## [0-1] 惯性系下的油门量~%float32[3] u_d                 ## [rad]~%~%float32[3] NE                  ## [rad]~%  ~%float32[3] Thrust              ## [rad]  ~%float32[3] Throttle~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlOutput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'u_l) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'u_d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'NE) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Thrust) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Throttle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlOutput
    (cl:cons ':header (header msg))
    (cl:cons ':u_l (u_l msg))
    (cl:cons ':u_d (u_d msg))
    (cl:cons ':NE (NE msg))
    (cl:cons ':Thrust (Thrust msg))
    (cl:cons ':Throttle (Throttle msg))
))
