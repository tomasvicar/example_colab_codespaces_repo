import matplotlib
# matplotlib.use('TkAgg')  # or 'QtAgg'
matplotlib.use('Qt5Agg') # pip install matplotlib PyQt5

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 4 * np.pi, 100)
plt.plot(x, np.sin(x))
plt.title("Matplotlib via Xpra HTML5")
plt.show()