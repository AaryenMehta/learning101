from cv2 import cv2
import pylab as pl
from PIL import Image
from scipy.ndimage import filters,measurements,morphology

image = cv2.imread('/home/aaryen/Desktop/robo.jpg') #reads image
image = cv2.resize(image, (960,540))
imgray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

ret, thresh = cv2.threshold(imgray, 110, 255, cv2.THRESH_BINARY) #thresholding with THRESH_BINARY

hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV) #convert color from RGB to HSV

#lower bound and upper bound arrays for mask

l_b = pl.array([30,10,240]) #12,4,232 #30,10,240
u_b = pl.array([52,131,255]) #52,131,255

mask = cv2.inRange(hsv, l_b, u_b) #mask

res = cv2.bitwise_and(image,image,mask=mask) #final result stored in res

im = pl.array(imgray)

#sobel derivatives
imx = pl.zeros(mask.shape)
filters.sobel(mask,1,imx)
imy = pl.zeros(mask.shape)
filters.sobel(mask,0,imy)
magnitude = pl.sqrt(imx**2+imy**2)

#conversion from colored to grayscale
magnitude = Image.fromarray(magnitude)
magnitude = magnitude.convert('L')
magnitude = pl.array(magnitude)

#finding and drawing contours
contours,heirarchy = cv2.findContours(magnitude, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)
cv2.drawContours(image, contours, -1, [0,255,0], 2)

#showing image
cv2.imshow("Image",image)
cv2.waitKey(0)

#code to  draw rectangles around contours
#area = max(contours, key=cv2.contourArea)
#(x1,y1,x2,y2) = cv2.boundingRect(area)
#cv2.rectangle(image, (x1,y1), (x1+x2,y1+y2), (0,255,0), 1)

#Thought of doing this and then somehow draw a rectangle around the lights in the image, marked by contour. Wasn't able to do so.
