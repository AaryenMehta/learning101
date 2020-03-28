import pylab as pl
from PIL import Image
from scipy.ndimage import filters

im = pl.array(Image.open("/home/aaryen/Desktop/empire.jpg").convert('L'))

i = 0

while i < 10 :

    im2 = filters.gaussian_filter(im,i)

    pl.figure()
    pl.gray()
    pl.imshow(im2)
    pl.axis("off")

    pl.figure()
    pl.contour(im2,origin='image')
    pl.axis("equal")
    pl.axis("off")

    pl.show()

    i += 1

#the contours become more and more distorted and it becomes difficult to identify the image from contours. Contours also seem to join to eachother to
#form a bigger contour.