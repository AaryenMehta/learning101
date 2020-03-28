import pylab as pl
from scipy.ndimage import filters
from PIL import Image


def outline(im):

    #Sobel derivative filters
    imx = pl.zeros(im.shape)
    filters.sobel(im,1,imx)

    imy = pl.zeros(im.shape)
    filters.sobel(im,0,imy)

    magnitude = pl.sqrt(imx**2+imy**2)

    pl.figure()
    pl.gray()
    pl.imshow(magnitude)

    pl.show()

image = pl.array(Image.open("/home/aaryen/Desktop/phone.jpg").convert('L'))
outline(image)