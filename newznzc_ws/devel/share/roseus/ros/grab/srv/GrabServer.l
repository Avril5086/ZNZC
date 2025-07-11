;; Auto-generated. Do not edit!


(when (boundp 'grab::GrabServer)
  (if (not (find-package "GRAB"))
    (make-package "GRAB"))
  (shadow 'GrabServer (find-package "GRAB")))
(unless (find-package "GRAB::GRABSERVER")
  (make-package "GRAB::GRABSERVER"))
(unless (find-package "GRAB::GRABSERVERREQUEST")
  (make-package "GRAB::GRABSERVERREQUEST"))
(unless (find-package "GRAB::GRABSERVERRESPONSE")
  (make-package "GRAB::GRABSERVERRESPONSE"))

(in-package "ROS")





(defclass grab::GrabServerRequest
  :super ros::object
  :slots (_state ))

(defmethod grab::GrabServerRequest
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass grab::GrabServerResponse
  :super ros::object
  :slots (_success ))

(defmethod grab::GrabServerResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass grab::GrabServer
  :super ros::object
  :slots ())

(setf (get grab::GrabServer :md5sum-) "ba7d0f17aa81fce463f555ebbb18949e")
(setf (get grab::GrabServer :datatype-) "grab/GrabServer")
(setf (get grab::GrabServer :request) grab::GrabServerRequest)
(setf (get grab::GrabServer :response) grab::GrabServerResponse)

(defmethod grab::GrabServerRequest
  (:response () (instance grab::GrabServerResponse :init)))

(setf (get grab::GrabServerRequest :md5sum-) "ba7d0f17aa81fce463f555ebbb18949e")
(setf (get grab::GrabServerRequest :datatype-) "grab/GrabServerRequest")
(setf (get grab::GrabServerRequest :definition-)
      "string state

---

bool success

")

(setf (get grab::GrabServerResponse :md5sum-) "ba7d0f17aa81fce463f555ebbb18949e")
(setf (get grab::GrabServerResponse :datatype-) "grab/GrabServerResponse")
(setf (get grab::GrabServerResponse :definition-)
      "string state

---

bool success

")



(provide :grab/GrabServer "ba7d0f17aa81fce463f555ebbb18949e")


