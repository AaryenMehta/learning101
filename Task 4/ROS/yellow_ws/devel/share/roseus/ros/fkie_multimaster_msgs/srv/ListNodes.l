;; Auto-generated. Do not edit!


(when (boundp 'fkie_multimaster_msgs::ListNodes)
  (if (not (find-package "FKIE_MULTIMASTER_MSGS"))
    (make-package "FKIE_MULTIMASTER_MSGS"))
  (shadow 'ListNodes (find-package "FKIE_MULTIMASTER_MSGS")))
(unless (find-package "FKIE_MULTIMASTER_MSGS::LISTNODES")
  (make-package "FKIE_MULTIMASTER_MSGS::LISTNODES"))
(unless (find-package "FKIE_MULTIMASTER_MSGS::LISTNODESREQUEST")
  (make-package "FKIE_MULTIMASTER_MSGS::LISTNODESREQUEST"))
(unless (find-package "FKIE_MULTIMASTER_MSGS::LISTNODESRESPONSE")
  (make-package "FKIE_MULTIMASTER_MSGS::LISTNODESRESPONSE"))

(in-package "ROS")





(defclass fkie_multimaster_msgs::ListNodesRequest
  :super ros::object
  :slots ())

(defmethod fkie_multimaster_msgs::ListNodesRequest
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

(defclass fkie_multimaster_msgs::ListNodesResponse
  :super ros::object
  :slots (_nodes ))

(defmethod fkie_multimaster_msgs::ListNodesResponse
  (:init
   (&key
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _nodes __nodes)
   self)
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:serialization-length
   ()
   (+
    ;; string[] _nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass fkie_multimaster_msgs::ListNodes
  :super ros::object
  :slots ())

(setf (get fkie_multimaster_msgs::ListNodes :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get fkie_multimaster_msgs::ListNodes :datatype-) "fkie_multimaster_msgs/ListNodes")
(setf (get fkie_multimaster_msgs::ListNodes :request) fkie_multimaster_msgs::ListNodesRequest)
(setf (get fkie_multimaster_msgs::ListNodes :response) fkie_multimaster_msgs::ListNodesResponse)

(defmethod fkie_multimaster_msgs::ListNodesRequest
  (:response () (instance fkie_multimaster_msgs::ListNodesResponse :init)))

(setf (get fkie_multimaster_msgs::ListNodesRequest :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get fkie_multimaster_msgs::ListNodesRequest :datatype-) "fkie_multimaster_msgs/ListNodesRequest")
(setf (get fkie_multimaster_msgs::ListNodesRequest :definition-)
      "---
string[] nodes

")

(setf (get fkie_multimaster_msgs::ListNodesResponse :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get fkie_multimaster_msgs::ListNodesResponse :datatype-) "fkie_multimaster_msgs/ListNodesResponse")
(setf (get fkie_multimaster_msgs::ListNodesResponse :definition-)
      "---
string[] nodes

")



(provide :fkie_multimaster_msgs/ListNodes "3d07bfda1268b4f76b16b7ba8a82665d")


