// Auto-generated. Do not edit!

// (in-package px4_command.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DroneState = require('./DroneState.js');
let ControlCommand = require('./ControlCommand.js');
let AttitudeReference = require('./AttitudeReference.js');
let ControlOutput = require('./ControlOutput.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Topic_for_log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.Drone_State = null;
      this.Control_Command = null;
      this.Attitude_Reference = null;
      this.Control_Output = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('Drone_State')) {
        this.Drone_State = initObj.Drone_State
      }
      else {
        this.Drone_State = new DroneState();
      }
      if (initObj.hasOwnProperty('Control_Command')) {
        this.Control_Command = initObj.Control_Command
      }
      else {
        this.Control_Command = new ControlCommand();
      }
      if (initObj.hasOwnProperty('Attitude_Reference')) {
        this.Attitude_Reference = initObj.Attitude_Reference
      }
      else {
        this.Attitude_Reference = new AttitudeReference();
      }
      if (initObj.hasOwnProperty('Control_Output')) {
        this.Control_Output = initObj.Control_Output
      }
      else {
        this.Control_Output = new ControlOutput();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Topic_for_log
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float32(obj.time, buffer, bufferOffset);
    // Serialize message field [Drone_State]
    bufferOffset = DroneState.serialize(obj.Drone_State, buffer, bufferOffset);
    // Serialize message field [Control_Command]
    bufferOffset = ControlCommand.serialize(obj.Control_Command, buffer, bufferOffset);
    // Serialize message field [Attitude_Reference]
    bufferOffset = AttitudeReference.serialize(obj.Attitude_Reference, buffer, bufferOffset);
    // Serialize message field [Control_Output]
    bufferOffset = ControlOutput.serialize(obj.Control_Output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Topic_for_log
    let len;
    let data = new Topic_for_log(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Drone_State]
    data.Drone_State = DroneState.deserialize(buffer, bufferOffset);
    // Deserialize message field [Control_Command]
    data.Control_Command = ControlCommand.deserialize(buffer, bufferOffset);
    // Deserialize message field [Attitude_Reference]
    data.Attitude_Reference = AttitudeReference.deserialize(buffer, bufferOffset);
    // Deserialize message field [Control_Output]
    data.Control_Output = ControlOutput.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += DroneState.getMessageSize(object.Drone_State);
    length += ControlCommand.getMessageSize(object.Control_Command);
    length += AttitudeReference.getMessageSize(object.Attitude_Reference);
    length += ControlOutput.getMessageSize(object.Control_Output);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'px4_command/Topic_for_log';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '946ec97f7fa6aeb302e66bf4d94384f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Topic_for_log(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.Drone_State !== undefined) {
      resolved.Drone_State = DroneState.Resolve(msg.Drone_State)
    }
    else {
      resolved.Drone_State = new DroneState()
    }

    if (msg.Control_Command !== undefined) {
      resolved.Control_Command = ControlCommand.Resolve(msg.Control_Command)
    }
    else {
      resolved.Control_Command = new ControlCommand()
    }

    if (msg.Attitude_Reference !== undefined) {
      resolved.Attitude_Reference = AttitudeReference.Resolve(msg.Attitude_Reference)
    }
    else {
      resolved.Attitude_Reference = new AttitudeReference()
    }

    if (msg.Control_Output !== undefined) {
      resolved.Control_Output = ControlOutput.Resolve(msg.Control_Output)
    }
    else {
      resolved.Control_Output = new ControlOutput()
    }

    return resolved;
    }
};

module.exports = Topic_for_log;
