from cv2 import cv2
import numpy as np

#refer to gradient.png in my repo in Images folder
img = cv2.imread("/home/aaryen/Desktop/opencv-master/samples/data/gradient.png", 0)
ret, th1 = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY) #smaller than threshold assigned to 0. Larger than threshold assigned to 1.
ret, th2 = cv2.threshold(img, 127, 255, cv2.THRESH_BINARY_INV) #does the inverse of THRESH_BINARY, that is smaller than threshold assigned to 1. Larger than threshold assigned to 0.
ret, th3 = cv2.threshold(img, 127, 255, cv2.THRESH_TRUNC) #truncates the values to threshold value after threshold is encountered
ret, th4 = cv2.threshold(img, 127, 255, cv2.THRESH_TOZERO) #value before threshold is assigned to 0 and value after the threshold is unchanged
ret, th5 = cv2.threshold(img, 127, 255, cv2.THRESH_TOZERO_INV) #does the inverse of THRESH_TOZERO, that is value before threshold remains unchanged and the value after threshold is assigned to 0

cv2.imshow("img", img)
cv2.imshow("th1", th1)
cv2.imshow("th2", th2)
cv2.imshow("th3", th3)
cv2.imshow("th4", th4)
cv2.imshow("th5", th5)
cv2.waitKey(0)
