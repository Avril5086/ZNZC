; Auto-generated. Do not edit!


(cl:in-package grab-srv)


;//! \htmlinclude GrabServer-request.msg.html

(cl:defclass <GrabServer-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass GrabServer-request (<GrabServer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GrabServer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GrabServer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grab-srv:<GrabServer-request> is deprecated: use grab-srv:GrabServer-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GrabServer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grab-srv:state-val is deprecated.  Use grab-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GrabServer-request>) ostream)
  "Serializes a message object of type '<GrabServer-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GrabServer-request>) istream)
  "Deserializes a message object of type '<GrabServer-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GrabServer-request>)))
  "Returns string type for a service object of type '<GrabServer-request>"
  "grab/GrabServerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GrabServer-request)))
  "Returns string type for a service object of type 'GrabServer-request"
  "grab/GrabServerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GrabServer-request>)))
  "Returns md5sum for a message object of type '<GrabServer-request>"
  "ba7d0f17aa81fce463f555ebbb18949e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GrabServer-request)))
  "Returns md5sum for a message object of type 'GrabServer-request"
  "ba7d0f17aa81fce463f555ebbb18949e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GrabServer-request>)))
  "Returns full string definition for message of type '<GrabServer-request>"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GrabServer-request)))
  "Returns full string definition for message of type 'GrabServer-request"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GrabServer-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GrabServer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GrabServer-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude GrabServer-response.msg.html

(cl:defclass <GrabServer-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GrabServer-response (<GrabServer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GrabServer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GrabServer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name grab-srv:<GrabServer-response> is deprecated: use grab-srv:GrabServer-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GrabServer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader grab-srv:success-val is deprecated.  Use grab-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GrabServer-response>) ostream)
  "Serializes a message object of type '<GrabServer-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GrabServer-response>) istream)
  "Deserializes a message object of type '<GrabServer-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GrabServer-response>)))
  "Returns string type for a service object of type '<GrabServer-response>"
  "grab/GrabServerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GrabServer-response)))
  "Returns string type for a service object of type 'GrabServer-response"
  "grab/GrabServerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GrabServer-response>)))
  "Returns md5sum for a message object of type '<GrabServer-response>"
  "ba7d0f17aa81fce463f555ebbb18949e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GrabServer-response)))
  "Returns md5sum for a message object of type 'GrabServer-response"
  "ba7d0f17aa81fce463f555ebbb18949e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GrabServer-response>)))
  "Returns full string definition for message of type '<GrabServer-response>"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GrabServer-response)))
  "Returns full string definition for message of type 'GrabServer-response"
  (cl:format cl:nil "~%bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GrabServer-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GrabServer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GrabServer-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GrabServer)))
  'GrabServer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GrabServer)))
  'GrabServer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GrabServer)))
  "Returns string type for a service object of type '<GrabServer>"
  "grab/GrabServer")