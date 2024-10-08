import matplotlib.pyplot as plt
import numpy as np
x=np.array([1,4,5,7,7,9])
y=np.array([1, 4,2,3,7,8])
plt.title("Representation")
plt.xlabel("X-axis")
plt.ylabel("Y-axis")
plt.plot(x,y, marker='o')
plt.show()