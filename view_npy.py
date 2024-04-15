# testing npy images
import numpy as np
from matplotlib import pyplot as plt

# imgs_array = np.load("npy/Egogesture/adv_img_np.npy")
# # imgs_array = np.load("adv_img_np.npy")

# for i in range(len(imgs_array)):
#   plt.imshow(imgs_array[i], cmap='gray')
#   plt.show()

pred_labels = np.load("npy/Egogesture/pred_labels.npy")
print("Predicted labels\n", pred_labels)

true_labels = np.load("npy/Egogesture/true_labels.npy")
print("\nTrue labels\n", true_labels)