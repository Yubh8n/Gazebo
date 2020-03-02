import cv2, PIL
import numpy as np

import matplotlib.pyplot as plt
import matplotlib as mpl
import pandas as pd

aruco_dict = cv2.aruco.Dictionary_get(cv2.aruco.DICT_6X6_250)


fig = plt.figure()
nx = 4
ny = 3
for i in range(1, nx*ny+1):
    ax = fig.add_subplot(ny,nx, i)
    img = cv2.aruco.drawMarker(aruco_dict,i, 700)
    plt.imshow(img, cmap = mpl.cm.gray, interpolation = "nearest")
    ax.axis("off")

#plt.savefig("_data/markers.pdf")
plt.show()