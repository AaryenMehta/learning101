;; Auto-generated. Do not edit!


(when (boundp 'fkie_multimaster_msgs::LinkState)
  (if (not (find-package "FKIE_MULTIMASTER_MSGS"))
    (make-package "FKIE_MULTIMASTER_MSGS"))
  (shadow 'LinkState (find-package "FKIE_MULTIMASTER_MSGS")))
(unless (find-package "FKIE_MULTIMASTER_MSGS::LINKSTATE")
  (make-package "FKIE_MULTIMASTER_MSGS::LINKSTATE"))

(in-package "ROS")
;;//! \htmlinclude LinkState.msg.html


(defclass fkie_multimaster_msgs::LinkState
  :super ros::object
  :slots (_destination _quality ))

(defmethod fkie_multimaster_msgs::LinkState
  (:init
   (&key
    ((:destination __destination) "")
    ((:quality __quality) 0.0)
    )
   (send-super :init)
   (setq _destination (string __destination))
   (setq _quality (float __quality))
   self)
  (:destination
   (&optional __destination)
   (if __destination (setq _destination __destination)) _destination)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:serialization-length
   ()
   (+
    ;; string _destination
    4 (length _destination)
    ;; float32 _quality
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _destination
       (write-long (length _destination) s) (princ _destination s)
     ;; float32 _quality
       (sys::poke _quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _destination
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _quality
     (setq _quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fkie_multimaster_msgs::LinkState :md5sum-) "d3fe0aab52336c0bd0bfea55b131c66e")
(setf (get fkie_multimaster_msgs::LinkState :datatype-) "fkie_multimaster_msgs/LinkState")
(setf (get fkie_multimaster_msgs::LinkState :definition-)
      "string destination
float32 quality
")



(provide :fkie_multimaster_msgs/LinkState "d3fe0aab52336c0bd0bfea55b131c66e")


