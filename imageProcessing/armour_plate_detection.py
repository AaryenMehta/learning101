from cv2 import cv2
import pylab as pl
from PIL import Image
from scipy.ndimage import filters,measurements,morphology

image = cv2.imread('/home/aaryen/Desktop/robo.jpg') #reads image
image = cv2.resize(image, (960,540)) #had resized the image as it was too big for the screen
imgray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

ret, thresh = cv2.threshold(imgray, 110, 255, cv2.THRESH_BINARY) #thresholding with THRESH_BINARY

hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV) #convert color from RGB to HSV

#lower bound and upper bound arrays for mask

l_b = pl.array([30,10,240]) #30,10,240
u_b = pl.array([52,131,255]) #52,131,255

mask = cv2.inRange(hsv, l_b, u_b) #mask

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

#finding contours
contours,heirarchy = cv2.findContours(magnitude, cv2.RETR_TREE, cv2.CHAIN_APPROX_NONE)

#getting the points of minimum area rectangle around particular contours
rect = cv2.minAreaRect(contours[8])
box1 = cv2.boxPoints(rect)
box1 = pl.int0(box1)

rect = cv2.minAreaRect(contours[14])
box2 = cv2.boxPoints(rect)
box2 = pl.int0(box2)

#combining required points of both contours to form a bigger rectangle
box = [list(box1[0]),list(box1[1]),list(box2[2]),list(box2[3])]
box = pl.array(box)
cv2.drawContours(image,[box],0,(0,255,0),1)

#showing image
cv2.imshow("Image",image)
cv2.waitKey(0)
