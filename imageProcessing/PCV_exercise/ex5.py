import pylab as pl
from scipy.ndimage import filters
from PIL import Image
from cv2 import cv2 as cv

im = cv.imread("/home/aaryen/Desktop/opencv-master/samples/data/sudoku.png")
imgray = cv.cvtColor(im,cv.COLOR_BGR2GRAY)
edges = cv.Canny(imgray,50,150,apertureSize = 3)

lines = cv.HoughLines(edges,1,pl.pi/180,200)
for _ in range(len(lines)):
    for rho,theta in lines[_]:
        a = pl.cos(theta)
        b = pl.sin(theta)
        x0 = a*rho
        y0 = b*rho
        x1 = int(x0 + 1000*(-b))
        y1 = int(y0 + 1000*(a))
        x2 = int(x0 - 1000*(-b))
        y2 = int(y0 - 1000*(a))

        cv.line(im,(x1,y1),(x2,y2),(0,255,0),2)

cv.imshow("Window",im)
cv.waitKey(0)