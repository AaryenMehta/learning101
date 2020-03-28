import pylab as pl
from scipy.ndimage import filters
from PIL import Image

im = pl.array(Image.open("/home/aaryen/Desktop/empire.jpg").convert('L'))
im2 = filters.gaussian_filter(im, 1)

im_unsharp = im2 - im
im_sharp = im - im_unsharp

pl.figure()
pl.gray()
pl.title("Original")
pl.imshow(im)

pl.figure()
pl.gray()
pl.title("Gaussian Blur")
pl.imshow(im2)

pl.figure()
pl.gray()
pl.title("Unsharp")
pl.imshow(im_unsharp)

pl.figure()
pl.gray()
pl.title("Sharp")
pl.imshow(im_sharp)

pl.show()