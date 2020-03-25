from cv2 import cv2
import numpy as np

def nothing(x): #function for the arguments of cv2.createTrackbar
    pass

cv2.namedWindow("Tracking") #window for tracking
cv2.createTrackbar("LH", "Tracking",0,255,nothing) #lower hue = 0
cv2.createTrackbar("LS", "Tracking",0,255,nothing) #lower saturation = 0
cv2.createTrackbar("LV", "Tracking",110,255,nothing) #lower value = 110
cv2.createTrackbar("UH", "Tracking",33,255,nothing) #upper hue = 33
cv2.createTrackbar("US", "Tracking",255,255,nothing) #upper saturation = 255
cv2.createTrackbar("UV", "Tracking",255,255,nothing) #upper value = 255

while True: # a loop that goes on unless esc key is encountered
    
    image = cv2.imread('/home/aaryen/Desktop/hand.jpg') #reads image

    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV) #convert color from RGB to HSV

    # all trackbar values given to corresponding variables

    l_h = cv2.getTrackbarPos("LH", "Tracking")
    l_s = cv2.getTrackbarPos("LS", "Tracking")
    l_v = cv2.getTrackbarPos("LV", "Tracking")

    u_h = cv2.getTrackbarPos("UH", "Tracking")
    u_s = cv2.getTrackbarPos("US", "Tracking")
    u_v = cv2.getTrackbarPos("UV", "Tracking")

    #lower bound and upper bound arrays for mask

    l_b = np.array([l_h,l_s,l_v]) #0,0,110
    u_b = np.array([u_h,u_s,u_v]) #33,255,255

    mask = cv2.inRange(hsv, l_b, u_b) #mask

    res = cv2.bitwise_and(image,image,mask=mask) #final result stored in res

    cv2.imshow("image", image) #shows input image in a window
    cv2.imshow("mask",mask) #shows mask in a window
    cv2.imshow("res", res) #shows final result, detected skin in a window
    key = cv2.waitKey(1) #stores input keys in 'key'

    if key == 27: #breaks the loop only if key == 'esc'
        break

