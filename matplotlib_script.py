import matplotlib
import os


# print(os.environ['DISPLAY'])
# print(os.environ['XDG_RUNTIME_DIR'])
# matplotlib.use('Qt5Agg')

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 4 * np.pi, 100)
plt.plot(x, np.sin(x))
plt.title("Matplotlib via Xpra HTML5")
plt.show()