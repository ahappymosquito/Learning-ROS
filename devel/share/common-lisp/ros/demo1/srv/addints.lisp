; Auto-generated. Do not edit!


(cl:in-package demo1-srv)


;//! \htmlinclude addints-request.msg.html

(cl:defclass <addints-request> (roslisp-msg-protocol:ros-message)
  ((n1
    :reader n1
    :initarg :n1
    :type cl:integer
    :initform 0)
   (n2
    :reader n2
    :initarg :n2
    :type cl:integer
    :initform 0))
)

(cl:defclass addints-request (<addints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo1-srv:<addints-request> is deprecated: use demo1-srv:addints-request instead.")))

(cl:ensure-generic-function 'n1-val :lambda-list '(m))
(cl:defmethod n1-val ((m <addints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo1-srv:n1-val is deprecated.  Use demo1-srv:n1 instead.")
  (n1 m))

(cl:ensure-generic-function 'n2-val :lambda-list '(m))
(cl:defmethod n2-val ((m <addints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo1-srv:n2-val is deprecated.  Use demo1-srv:n2 instead.")
  (n2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addints-request>) ostream)
  "Serializes a message object of type '<addints-request>"
  (cl:let* ((signed (cl:slot-value msg 'n1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'n2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addints-request>) istream)
  "Deserializes a message object of type '<addints-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addints-request>)))
  "Returns string type for a service object of type '<addints-request>"
  "demo1/addintsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addints-request)))
  "Returns string type for a service object of type 'addints-request"
  "demo1/addintsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addints-request>)))
  "Returns md5sum for a message object of type '<addints-request>"
  "aa5e88d5a46242f3c25d5b10a656c0d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addints-request)))
  "Returns md5sum for a message object of type 'addints-request"
  "aa5e88d5a46242f3c25d5b10a656c0d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addints-request>)))
  "Returns full string definition for message of type '<addints-request>"
  (cl:format cl:nil "int32 n1~%int32 n2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addints-request)))
  "Returns full string definition for message of type 'addints-request"
  (cl:format cl:nil "int32 n1~%int32 n2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addints-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'addints-request
    (cl:cons ':n1 (n1 msg))
    (cl:cons ':n2 (n2 msg))
))
;//! \htmlinclude addints-response.msg.html

(cl:defclass <addints-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass addints-response (<addints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <addints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'addints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo1-srv:<addints-response> is deprecated: use demo1-srv:addints-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <addints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo1-srv:sum-val is deprecated.  Use demo1-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <addints-response>) ostream)
  "Serializes a message object of type '<addints-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <addints-response>) istream)
  "Deserializes a message object of type '<addints-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<addints-response>)))
  "Returns string type for a service object of type '<addints-response>"
  "demo1/addintsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addints-response)))
  "Returns string type for a service object of type 'addints-response"
  "demo1/addintsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<addints-response>)))
  "Returns md5sum for a message object of type '<addints-response>"
  "aa5e88d5a46242f3c25d5b10a656c0d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'addints-response)))
  "Returns md5sum for a message object of type 'addints-response"
  "aa5e88d5a46242f3c25d5b10a656c0d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<addints-response>)))
  "Returns full string definition for message of type '<addints-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'addints-response)))
  "Returns full string definition for message of type 'addints-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <addints-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <addints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'addints-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'addints)))
  'addints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'addints)))
  'addints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'addints)))
  "Returns string type for a service object of type '<addints>"
  "demo1/addints")