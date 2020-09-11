// Auto-generated. Do not edit!

// (in-package px4_command.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AttitudeReference {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle_sp = null;
      this.desired_throttle = null;
      this.desired_attitude = null;
      this.desired_att_q = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle_sp')) {
        this.throttle_sp = initObj.throttle_sp
      }
      else {
        this.throttle_sp = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('desired_throttle')) {
        this.desired_throttle = initObj.desired_throttle
      }
      else {
        this.desired_throttle = 0.0;
      }
      if (initObj.hasOwnProperty('desired_attitude')) {
        this.desired_attitude = initObj.desired_attitude
      }
      else {
        this.desired_attitude = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('desired_att_q')) {
        this.desired_att_q = initObj.desired_att_q
      }
      else {
        this.desired_att_q = new geometry_msgs.msg.Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AttitudeReference
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [throttle_sp] has the right length
    if (obj.throttle_sp.length !== 3) {
      throw new Error('Unable to serialize array field throttle_sp - length must be 3')
    }
    // Serialize message field [throttle_sp]
    bufferOffset = _arraySerializer.float32(obj.throttle_sp, buffer, bufferOffset, 3);
    // Serialize message field [desired_throttle]
    bufferOffset = _serializer.float32(obj.desired_throttle, buffer, bufferOffset);
    // Check that the constant length array field [desired_attitude] has the right length
    if (obj.desired_attitude.length !== 3) {
      throw new Error('Unable to serialize array field desired_attitude - length must be 3')
    }
    // Serialize message field [desired_attitude]
    bufferOffset = _arraySerializer.float32(obj.desired_attitude, buffer, bufferOffset, 3);
    // Serialize message field [desired_att_q]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.desired_att_q, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AttitudeReference
    let len;
    let data = new AttitudeReference(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_sp]
    data.throttle_sp = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [desired_throttle]
    data.desired_throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [desired_attitude]
    data.desired_attitude = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [desired_att_q]
    data.desired_att_q = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'px4_command/AttitudeReference';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e58702438e0c601131590714878133df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AttitudeReference(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle_sp !== undefined) {
      resolved.throttle_sp = msg.throttle_sp;
    }
    else {
      resolved.throttle_sp = new Array(3).fill(0)
    }

    if (msg.desired_throttle !== undefined) {
      resolved.desired_throttle = msg.desired_throttle;
    }
    else {
      resolved.desired_throttle = 0.0
    }

    if (msg.desired_attitude !== undefined) {
      resolved.desired_attitude = msg.desired_attitude;
    }
    else {
      resolved.desired_attitude = new Array(3).fill(0)
    }

    if (msg.desired_att_q !== undefined) {
      resolved.desired_att_q = geometry_msgs.msg.Quaternion.Resolve(msg.desired_att_q)
    }
    else {
      resolved.desired_att_q = new geometry_msgs.msg.Quaternion()
    }

    return resolved;
    }
};

module.exports = AttitudeReference;
