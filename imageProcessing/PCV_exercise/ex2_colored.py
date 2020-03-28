import pylab as pl
from scipy.ndimage import filters
from PIL import Image

im = pl.array(Image.open("/home/aaryen/Desktop/empire.jpg"))
im2 = pl.zeros(im.shape)

for i in range(3):
    im2[:,:,i] = filters.gaussian_filter(im[:,:,i],1)
im2 = pl.uint8(im2)

im_unsharp = im2 - im
im_sharp = im - im_unsharp

pl.figure()
pl.title("Original")
pl.imshow(im)

pl.figure()
pl.title("Gaussian Blur")
pl.imshow(im2)

pl.figure()
pl.title("Unsharp")
pl.imshow(im_unsharp)

pl.figure()
pl.title("Sharp")
pl.imshow(im_sharp)

pl.show()