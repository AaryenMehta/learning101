#!/usr/bin/env python
import cv2
import pylab as pl
import rospy
from geometry_msgs.msg import Twist
PI = 3.1415926535897
dirty = 0
picture = 0
aaj = 0
kal = 0

vid = cv2.VideoCapture(0)
print("Green = Forward; Red = Backward; Blue = Left; Yellow = Right")

def move(cntg,cntr,cntb,cnty):
    global dirty
    global picture
    global aaj
    global kal
    flag = 0
    rospy.init_node('robot_cleaner', anonymous=True)
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    angular_speed = PI/4
    relative_angle = PI/2
    if len(cntg) > 100 :
        flag += 1
        picture = 0
        aaj = 0
        kal = 0
        if dirty > 0 :
            return
        dirty += 1
        vel_msg.linear.x = abs(3.0)
        vel_msg.linear.y = 0
        vel_msg.linear.z = 0
        vel_msg.angular.x = 0
        vel_msg.angular.y = 0
        vel_msg.angular.z = 0
    elif len(cntr) > 100 :
        flag += 1
        dirty = 0
        aaj = 0
        kal = 0
        if picture > 0 :
            return
        picture += 1
        vel_msg.linear.x = -abs(3.0)
        vel_msg.linear.y = 0
        vel_msg.linear.z = 0
        vel_msg.angular.x = 0
        vel_msg.angular.y = 0
        vel_msg.angular.z = 0
    if len(cntb) > 100 :
        flag -= 1
        dirty = 0
        picture = 0
        kal = 0
        if aaj > 0 :
            return
        aaj += 1
        vel_msg.linear.x = 0
        vel_msg.linear.y = 0
        vel_msg.linear.z = 0
        vel_msg.angular.x = 0
        vel_msg.angular.y = 0
        vel_msg.angular.z = abs(angular_speed)
    elif len(cnty) > 100 :
        flag -= 1
        dirty = 0
        picture = 0
        aaj = 0
        if kal > 0 :
            return
        kal += 1
        vel_msg.linear.x = 0
        vel_msg.linear.y = 0
        vel_msg.linear.z = 0
        vel_msg.angular.x = 0
        vel_msg.angular.y = 0
        vel_msg.angular.z = -abs(angular_speed)

    if flag == 1:
        t0 = rospy.Time.now().to_sec()
        current_distance = 0

        while(current_distance < 3):
            velocity_publisher.publish(vel_msg)
            t1=rospy.Time.now().to_sec()
            current_distance= 3*(t1-t0)

        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
        velocity_publisher.publish(vel_msg)

    elif flag == -1:
        t0 = rospy.Time.now().to_sec()
        current_angle = 0

        while(current_angle < relative_angle):
            velocity_publisher.publish(vel_msg)
            t1 = rospy.Time.now().to_sec()
            current_angle = angular_speed*(t1-t0)

        vel_msg.angular.z = 0
        vel_msg.linear.x = 0
        velocity_publisher.publish(vel_msg)
        
if __name__ == '__main__':
    while(True):
        ret,frame = vid.read()
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)

        l_g = pl.array([40,40,40]) #lower bound values for green
        u_g = pl.array([70,255,255]) #upper bound values for green
        l_r = pl.array([0,100,100])#declare lower bound for red here #0,100,100
        u_r = pl.array([20,255,255])#decalre upper bound for red here #20,255,255
        l_b = pl.array([110,50,50])#lower bd blue #110,50,50
        u_b = pl.array([130,255,255])#upper bd blue #130,255,255
        l_y = pl.array([23,41,133])#lower bd purple 212,255,63
        u_y = pl.array([40,150,255])#upper bd purple 212,255,127

        mask_g = cv2.inRange(hsv,l_g,u_g)
        mask_r = cv2.inRange(hsv,l_r,u_r)
        mask_b = cv2.inRange(hsv,l_b,u_b)
        mask_y = cv2.inRange(hsv,l_y,u_y)

        _,thresh_g = cv2.threshold(mask_g,127,255,cv2.THRESH_BINARY)
        __,thresh_r = cv2.threshold(mask_r,127,255,cv2.THRESH_BINARY)
        ___,thresh_b = cv2.threshold(mask_b,127,255,cv2.THRESH_BINARY)
        ____,thresh_y = cv2.threshold(mask_y,127,255,cv2.THRESH_BINARY)

        cntg,heirarchy_g = cv2.findContours(thresh_g,cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
        cntr,heirarchy_r = cv2.findContours(thresh_r,cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
        cntb,heirarchy_b = cv2.findContours(thresh_b,cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
        cnty,heirarchy_y = cv2.findContours(thresh_y,cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
    
        try:
            move(cntg,cntr,cntb,cnty)
        except rospy.ROSInterruptException:
            pass

    vid.release()
    cv2.destroyAllWindows()