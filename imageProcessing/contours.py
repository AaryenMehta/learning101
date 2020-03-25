from cv2 import cv2 as cv
import numpy as np

img = cv.imread("/home/aaryen/Desktop/opencv-logo.png") #opencv logo is input image
imgray = cv.cvtColor(img, cv.COLOR_BGR2GRAY) #convert to grayscale and store in imgray
ret, thresh = cv.threshold(imgray, 127, 255, cv.THRESH_BINARY) #thresholding with THRESH_BINARY
contours, heirarchy = cv.findContours(thresh, cv.RETR_TREE, cv.CHAIN_APPROX_NONE) #finding contours

#print("Number of contours =", str(len(contours)))
#print(contours[0])

cv.drawContours(img, contours, -1, [255,0,255], 4) #draws magenta colored contours

cv.imshow("img_with_contours", img)
cv.imshow("imgray", imgray)
cv.imshow("thresh", thresh)
cv.waitKey(0)