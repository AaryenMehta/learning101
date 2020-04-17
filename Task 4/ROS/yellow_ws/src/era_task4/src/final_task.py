#!/usr/bin/env python
#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
from math import pow, atan2, sqrt
import cv2
import pylab as pl
PI = 3.1415926535897

dirty = 0
picture = 0
aaj = 0
kal = 0

def move(j,a,l,c):
    global dirty
    global picture
    global aaj
    global kal
    rospy.init_node('robot_cleaner', anonymous=True)
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    aaj = 0
    kal = 0
    if j-a+l/2-c/2 < 0 :
        picture = 0
        if dirty > 0:
            return
        dirty += 1
        vel_msg.linear.x = abs(3.0)
    elif j-a+l/2-c/2 > 0 :
        dirty = 0
        if picture > 0:
            return
        picture += 1
        vel_msg.linear.x = -abs(3.0)
    
    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    vel_msg.angular.z = 0

    t0 = rospy.Time.now().to_sec()
    current_distance = 0

    while(current_distance < 3):
        velocity_publisher.publish(vel_msg)
        t1=rospy.Time.now().to_sec()
        current_distance= 3*(t1-t0)

    vel_msg.linear.x = 0
    velocity_publisher.publish(vel_msg)

def rotate(k,b,m,d):
    global dirty
    global picture
    global aaj
    global kal
    rospy.init_node('robot_cleaner', anonymous=True)
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    angular_speed = PI/4
    relative_angle = PI/2
    dirty = 0
    picture = 0
    if k-b+m/2-d/2 > 0:
        kal = 0
        if aaj > 0:
            return
        aaj += 1
        vel_msg.angular.z = abs(angular_speed)
    elif k-b+m/2-d/2 < 0:
        aaj = 0
        if kal > 0:
            return
        kal +=1
        vel_msg.angular.z = -abs(angular_speed)
    
    vel_msg.linear.x = 0
    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0

    t0 = rospy.Time.now().to_sec()
    current_angle = 0

    while(current_angle < relative_angle):
        velocity_publisher.publish(vel_msg)
        t1 = rospy.Time.now().to_sec()
        current_angle = angular_speed*(t1-t0)

    vel_msg.angular.z = 0
    velocity_publisher.publish(vel_msg)


if __name__ == '__main__':

    vid = cv2.VideoCapture(0)
    print("Use your finger to control turtle. Use finger with RED coloured finger cap")
    print("Move right = Forward; Move left = Backward; Move up = CW; Move down = ACW")
    loop = 0
    while True:
        loop += 1
        ret,frame = vid.read()
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        lb = pl.array([170,70,50])
        ub = pl.array([180,255,255])
        mask = cv2.inRange(hsv,lb,ub)
        _,thresh = cv2.threshold(mask,127,255,cv2.THRESH_BINARY)
        contours,heirarchy = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
        cnt = max(contours,key = cv2.contourArea)
        j,k,l,m = cv2.boundingRect(cnt)
        if loop > 1 :
            var = max(abs(j-a+l/2-c/2),abs(k-b+m/2-d/2))
            if var == abs(j-a+l/2-c/2) and var > 50:
                move(j,a,l,c)
            elif var == abs(k-b+m/2-d/2) and var > 50:
                rotate(k,b,m,d)
        a,b,c,d = j,k,l,m
        cv2.rectangle(frame,(j,k),(j+l,k+m),(0,255,0), 2)
        cv2.imshow("frame", frame)
        if cv2.waitKey(1) == 'q':
            cv2.destroyAllWindows()