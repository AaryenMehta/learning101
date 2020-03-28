from PIL import Image
from scipy.ndimage import filters
import pylab as pl 

im = pl.array(Image.open("/home/aaryen/Desktop/empire.jpg").convert('L'))
im2 = filters.gaussian_filter(im, 100)

im3 = im / im2

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
pl.title("Quotient Image")
pl.imshow(im3)

pl.show()