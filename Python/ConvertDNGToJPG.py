import rawpy
import imageio

path = 'image.nef'
with rawpy.imread('test.DNG') as raw:
    rgb = raw.postprocess()
imageio.imsave('test.tiff', rgb)