; Auto-generated. Do not edit!


(cl:in-package demo0-msg)


;//! \htmlinclude dd.msg.html

(cl:defclass <dd> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass dd (<dd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo0-msg:<dd> is deprecated: use demo0-msg:dd instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <dd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo0-msg:name-val is deprecated.  Use demo0-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <dd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo0-msg:age-val is deprecated.  Use demo0-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <dd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo0-msg:height-val is deprecated.  Use demo0-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dd>) ostream)
  "Serializes a message object of type '<dd>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dd>) istream)
  "Deserializes a message object of type '<dd>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dd>)))
  "Returns string type for a message object of type '<dd>"
  "demo0/dd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dd)))
  "Returns string type for a message object of type 'dd"
  "demo0/dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dd>)))
  "Returns md5sum for a message object of type '<dd>"
  "e0fac001a0baa828fa49ea5cc144df0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dd)))
  "Returns md5sum for a message object of type 'dd"
  "e0fac001a0baa828fa49ea5cc144df0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dd>)))
  "Returns full string definition for message of type '<dd>"
  (cl:format cl:nil "string name~%int16 age~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dd)))
  "Returns full string definition for message of type 'dd"
  (cl:format cl:nil "string name~%int16 age~%float32 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dd>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dd>))
  "Converts a ROS message object to a list"
  (cl:list 'dd
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':height (height msg))
))
