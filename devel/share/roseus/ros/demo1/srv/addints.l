;; Auto-generated. Do not edit!


(when (boundp 'demo1::addints)
  (if (not (find-package "DEMO1"))
    (make-package "DEMO1"))
  (shadow 'addints (find-package "DEMO1")))
(unless (find-package "DEMO1::ADDINTS")
  (make-package "DEMO1::ADDINTS"))
(unless (find-package "DEMO1::ADDINTSREQUEST")
  (make-package "DEMO1::ADDINTSREQUEST"))
(unless (find-package "DEMO1::ADDINTSRESPONSE")
  (make-package "DEMO1::ADDINTSRESPONSE"))

(in-package "ROS")





(defclass demo1::addintsRequest
  :super ros::object
  :slots (_n1 _n2 ))

(defmethod demo1::addintsRequest
  (:init
   (&key
    ((:n1 __n1) 0)
    ((:n2 __n2) 0)
    )
   (send-super :init)
   (setq _n1 (round __n1))
   (setq _n2 (round __n2))
   self)
  (:n1
   (&optional __n1)
   (if __n1 (setq _n1 __n1)) _n1)
  (:n2
   (&optional __n2)
   (if __n2 (setq _n2 __n2)) _n2)
  (:serialization-length
   ()
   (+
    ;; int32 _n1
    4
    ;; int32 _n2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _n1
       (write-long _n1 s)
     ;; int32 _n2
       (write-long _n2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _n1
     (setq _n1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _n2
     (setq _n2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo1::addintsResponse
  :super ros::object
  :slots (_sum ))

(defmethod demo1::addintsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo1::addints
  :super ros::object
  :slots ())

(setf (get demo1::addints :md5sum-) "aa5e88d5a46242f3c25d5b10a656c0d2")
(setf (get demo1::addints :datatype-) "demo1/addints")
(setf (get demo1::addints :request) demo1::addintsRequest)
(setf (get demo1::addints :response) demo1::addintsResponse)

(defmethod demo1::addintsRequest
  (:response () (instance demo1::addintsResponse :init)))

(setf (get demo1::addintsRequest :md5sum-) "aa5e88d5a46242f3c25d5b10a656c0d2")
(setf (get demo1::addintsRequest :datatype-) "demo1/addintsRequest")
(setf (get demo1::addintsRequest :definition-)
      "int32 n1
int32 n2
---
int32 sum
")

(setf (get demo1::addintsResponse :md5sum-) "aa5e88d5a46242f3c25d5b10a656c0d2")
(setf (get demo1::addintsResponse :datatype-) "demo1/addintsResponse")
(setf (get demo1::addintsResponse :definition-)
      "int32 n1
int32 n2
---
int32 sum
")



(provide :demo1/addints "aa5e88d5a46242f3c25d5b10a656c0d2")


