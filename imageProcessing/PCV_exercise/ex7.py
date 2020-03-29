from PIL import Image
import pylab as pl
from scipy.ndimage import measurements,morphology

im = pl.array(Image.open("/home/aaryen/Desktop/try.jpg").convert('L'))
im = 1*(im<128)

im_open = morphology.binary_opening(im,pl.ones((9,5)),iterations=2)
labels_open, nbr_objects_open = measurements.label(im_open)
#print(nbr_objects_open)

pl.figure()
pl.gray()
pl.imshow(im)

pl.figure()
pl.gray()
pl.imshow(im_open)

points = measurements.center_of_mass(im_open, labels_open, range(nbr_objects_open))

pl.figure()
pl.gray()
pl.imshow(im)
pl.axis("equal")
pl.axis("off")

for i in range(nbr_objects_open):
    pl.plot(points[i][1],points[i][0],"r*")
    #print(pt)

pl.show()