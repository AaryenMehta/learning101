;; Auto-generated. Do not edit!


(when (boundp 'fkie_multimaster_msgs::ListDescription)
  (if (not (find-package "FKIE_MULTIMASTER_MSGS"))
    (make-package "FKIE_MULTIMASTER_MSGS"))
  (shadow 'ListDescription (find-package "FKIE_MULTIMASTER_MSGS")))
(unless (find-package "FKIE_MULTIMASTER_MSGS::LISTDESCRIPTION")
  (make-package "FKIE_MULTIMASTER_MSGS::LISTDESCRIPTION"))
(unless (find-package "FKIE_MULTIMASTER_MSGS::LISTDESCRIPTIONREQUEST")
  (make-package "FKIE_MULTIMASTER_MSGS::LISTDESCRIPTIONREQUEST"))
(unless (find-package "FKIE_MULTIMASTER_MSGS::LISTDESCRIPTIONRESPONSE")
  (make-package "FKIE_MULTIMASTER_MSGS::LISTDESCRIPTIONRESPONSE"))

(in-package "ROS")





(defclass fkie_multimaster_msgs::ListDescriptionRequest
  :super ros::object
  :slots ())

(defmethod fkie_multimaster_msgs::ListDescriptionRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass fkie_multimaster_msgs::ListDescriptionResponse
  :super ros::object
  :slots (_robot_name _robot_type _robot_images _robot_descr _capabilities ))

(defmethod fkie_multimaster_msgs::ListDescriptionResponse
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:robot_type __robot_type) "")
    ((:robot_images __robot_images) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:robot_descr __robot_descr) "")
    ((:capabilities __capabilities) (let (r) (dotimes (i 0) (push (instance fkie_multimaster_msgs::Capability :init) r)) r))
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _robot_type (string __robot_type))
   (setq _robot_images __robot_images)
   (setq _robot_descr (string __robot_descr))
   (setq _capabilities __capabilities)
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:robot_type
   (&optional __robot_type)
   (if __robot_type (setq _robot_type __robot_type)) _robot_type)
  (:robot_images
   (&optional __robot_images)
   (if __robot_images (setq _robot_images __robot_images)) _robot_images)
  (:robot_descr
   (&optional __robot_descr)
   (if __robot_descr (setq _robot_descr __robot_descr)) _robot_descr)
  (:capabilities
   (&rest __capabilities)
   (if (keywordp (car __capabilities))
       (send* _capabilities __capabilities)
     (progn
       (if __capabilities (setq _capabilities (car __capabilities)))
       _capabilities)))
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; string _robot_type
    4 (length _robot_type)
    ;; string[] _robot_images
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _robot_images)) 4
    ;; string _robot_descr
    4 (length _robot_descr)
    ;; fkie_multimaster_msgs/Capability[] _capabilities
    (apply #'+ (send-all _capabilities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; string _robot_type
       (write-long (length _robot_type) s) (princ _robot_type s)
     ;; string[] _robot_images
     (write-long (length _robot_images) s)
     (dolist (elem _robot_images)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _robot_descr
       (write-long (length _robot_descr) s) (princ _robot_descr s)
     ;; fkie_multimaster_msgs/Capability[] _capabilities
     (write-long (length _capabilities) s)
     (dolist (elem _capabilities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _robot_images
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_images (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _robot_images i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _robot_descr
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_descr (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; fkie_multimaster_msgs/Capability[] _capabilities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _capabilities (let (r) (dotimes (i n) (push (instance fkie_multimaster_msgs::Capability :init) r)) r))
     (dolist (elem- _capabilities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass fkie_multimaster_msgs::ListDescription
  :super ros::object
  :slots ())

(setf (get fkie_multimaster_msgs::ListDescription :md5sum-) "a36ba5a97ce785b9b964aa015b26332b")
(setf (get fkie_multimaster_msgs::ListDescription :datatype-) "fkie_multimaster_msgs/ListDescription")
(setf (get fkie_multimaster_msgs::ListDescription :request) fkie_multimaster_msgs::ListDescriptionRequest)
(setf (get fkie_multimaster_msgs::ListDescription :response) fkie_multimaster_msgs::ListDescriptionResponse)

(defmethod fkie_multimaster_msgs::ListDescriptionRequest
  (:response () (instance fkie_multimaster_msgs::ListDescriptionResponse :init)))

(setf (get fkie_multimaster_msgs::ListDescriptionRequest :md5sum-) "a36ba5a97ce785b9b964aa015b26332b")
(setf (get fkie_multimaster_msgs::ListDescriptionRequest :datatype-) "fkie_multimaster_msgs/ListDescriptionRequest")
(setf (get fkie_multimaster_msgs::ListDescriptionRequest :definition-)
      "---
string robot_name
string robot_type
string[] robot_images
string robot_descr
fkie_multimaster_msgs/Capability[] capabilities

================================================================================
MSG: fkie_multimaster_msgs/Capability
# the ROS namespace of the capability
string namespace
# the name of the capability
string name
# the type of the capability
string type
# list of the images assigned to the this capability
string[] images
# the description of the capability
string description
# a list of nodes assigned to this group. The nodes are described by full ROS name (with namesspace)
")

(setf (get fkie_multimaster_msgs::ListDescriptionResponse :md5sum-) "a36ba5a97ce785b9b964aa015b26332b")
(setf (get fkie_multimaster_msgs::ListDescriptionResponse :datatype-) "fkie_multimaster_msgs/ListDescriptionResponse")
(setf (get fkie_multimaster_msgs::ListDescriptionResponse :definition-)
      "---
string robot_name
string robot_type
string[] robot_images
string robot_descr
fkie_multimaster_msgs/Capability[] capabilities

================================================================================
MSG: fkie_multimaster_msgs/Capability
# the ROS namespace of the capability
string namespace
# the name of the capability
string name
# the type of the capability
string type
# list of the images assigned to the this capability
string[] images
# the description of the capability
string description
# a list of nodes assigned to this group. The nodes are described by full ROS name (with namesspace)
")



(provide :fkie_multimaster_msgs/ListDescription "a36ba5a97ce785b9b964aa015b26332b")


