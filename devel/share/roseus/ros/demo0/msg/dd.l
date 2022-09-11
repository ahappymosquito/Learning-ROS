;; Auto-generated. Do not edit!


(when (boundp 'demo0::dd)
  (if (not (find-package "DEMO0"))
    (make-package "DEMO0"))
  (shadow 'dd (find-package "DEMO0")))
(unless (find-package "DEMO0::DD")
  (make-package "DEMO0::DD"))

(in-package "ROS")
;;//! \htmlinclude dd.msg.html


(defclass demo0::dd
  :super ros::object
  :slots (_name _age _height ))

(defmethod demo0::dd
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _height (float __height))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int16 _age
    2
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _age
       (write-word _age s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _age
     (setq _age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get demo0::dd :md5sum-) "e0fac001a0baa828fa49ea5cc144df0e")
(setf (get demo0::dd :datatype-) "demo0/dd")
(setf (get demo0::dd :definition-)
      "string name
int16 age
float32 height
")



(provide :demo0/dd "e0fac001a0baa828fa49ea5cc144df0e")


