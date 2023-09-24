; Auto-generated. Do not edit!


(cl:in-package turtle_control-msg)


;//! \htmlinclude kf.msg.html

(cl:defclass <kf> (roslisp-msg-protocol:ros-message)
  ((x_kf
    :reader x_kf
    :initarg :x_kf
    :type cl:float
    :initform 0.0)
   (x_odom
    :reader x_odom
    :initarg :x_odom
    :type cl:float
    :initform 0.0)
   (x_sensor
    :reader x_sensor
    :initarg :x_sensor
    :type cl:float
    :initform 0.0)
   (x_sensor_var
    :reader x_sensor_var
    :initarg :x_sensor_var
    :type cl:float
    :initform 0.0))
)

(cl:defclass kf (<kf>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kf>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kf)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_control-msg:<kf> is deprecated: use turtle_control-msg:kf instead.")))

(cl:ensure-generic-function 'x_kf-val :lambda-list '(m))
(cl:defmethod x_kf-val ((m <kf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:x_kf-val is deprecated.  Use turtle_control-msg:x_kf instead.")
  (x_kf m))

(cl:ensure-generic-function 'x_odom-val :lambda-list '(m))
(cl:defmethod x_odom-val ((m <kf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:x_odom-val is deprecated.  Use turtle_control-msg:x_odom instead.")
  (x_odom m))

(cl:ensure-generic-function 'x_sensor-val :lambda-list '(m))
(cl:defmethod x_sensor-val ((m <kf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:x_sensor-val is deprecated.  Use turtle_control-msg:x_sensor instead.")
  (x_sensor m))

(cl:ensure-generic-function 'x_sensor_var-val :lambda-list '(m))
(cl:defmethod x_sensor_var-val ((m <kf>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_control-msg:x_sensor_var-val is deprecated.  Use turtle_control-msg:x_sensor_var instead.")
  (x_sensor_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kf>) ostream)
  "Serializes a message object of type '<kf>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_kf))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_odom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_sensor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x_sensor_var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kf>) istream)
  "Deserializes a message object of type '<kf>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_kf) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_odom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_sensor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_sensor_var) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kf>)))
  "Returns string type for a message object of type '<kf>"
  "turtle_control/kf")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kf)))
  "Returns string type for a message object of type 'kf"
  "turtle_control/kf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kf>)))
  "Returns md5sum for a message object of type '<kf>"
  "0d726d72060def9671484e9bd7b7c259")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kf)))
  "Returns md5sum for a message object of type 'kf"
  "0d726d72060def9671484e9bd7b7c259")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kf>)))
  "Returns full string definition for message of type '<kf>"
  (cl:format cl:nil "float32 x_kf~%float32 x_odom~%float32 x_sensor~%float32 x_sensor_var~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kf)))
  "Returns full string definition for message of type 'kf"
  (cl:format cl:nil "float32 x_kf~%float32 x_odom~%float32 x_sensor~%float32 x_sensor_var~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kf>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kf>))
  "Converts a ROS message object to a list"
  (cl:list 'kf
    (cl:cons ':x_kf (x_kf msg))
    (cl:cons ':x_odom (x_odom msg))
    (cl:cons ':x_sensor (x_sensor msg))
    (cl:cons ':x_sensor_var (x_sensor_var msg))
))
