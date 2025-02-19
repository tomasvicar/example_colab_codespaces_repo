

import torch


a = torch.tensor([1, 2, 3])
b = a.to('cuda:0')

print(b.device)


import matplotlib.pyplot as plt 


plt.plot([1, 2, 3])
plt.show()

