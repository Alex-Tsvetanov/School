import numpy as np  
import matplotlib.pyplot as plt  

def graph(formula, x_range):  
    x = np.array(x_range)  
    y = eval(formula)
    plt.plot(x, y)  
    plt.show()

graph('abs (x)', range(-100, 100))
graph('pow (x, 2)', range(-100, 100))
