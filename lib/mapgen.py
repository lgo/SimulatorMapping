from PIL import Image
from io import BytesIO as StringIO
import numpy as np

class MapGen(object):
  
  def __init__(self):
    pass

  def getTile(self, z, x, y):

    r = 0.9
    g = 0.3
    b = 0.3
    rgbArray = np.zeros((256,256,3), 'uint8')
    for i in range(256):
        for j in range(256):
          shade = (i + j) / 2
          rgbArray[i][j] = (shade * r, shade * g, shade * b)
    a = Image.fromarray(rgbArray, 'RGB')
    # ...
    buf = StringIO()
    a.save(buf, 'png')
    return buf.getvalue()