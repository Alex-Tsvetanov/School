import matplotlib.pyplot as plt
import numpy as np
import math as math

fs = 360

x = np.arange (fs)
y = [ np.sin (math.radians (i - fs)) for i in x]

plt.plot (x, y)
plt.show()
plt.stem (x, y)
plt.show()
