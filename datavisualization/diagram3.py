import matplotlib.pyplot as plt
import numpy as np
Region=['RW', 'BU', 'TZ', 'UG', 'KN', 'SS']
values=[13.5,11,67,57,81,8]
plt.bar(Region, values,color='green')
plt.xlabel("Country")
plt.ylabel("population")
plt.title("county per populaton in millions")
plt.show()