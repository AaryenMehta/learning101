from PIL import Image
from scipy.ndimage import measurements,morphology
import pylab as pl

im = pl.array(Image.open("/home/aaryen/Desktop/try.jpg").convert('L'))
im = 1*(im<128)

labels, nbr_objects = measurements.label(im)

pl.figure()
pl.gray()
pl.imshow(labels)

pl.figure()
pl.gray()
pl.hist(labels.flatten(),10)

pl.show()