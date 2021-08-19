# from collections import deque
import numpy as np
def cconv(h,x):
    h1=[]
    for _ in range(0,len(h)):
        h1.append(h)
        h.insert(0,h.pop())
    print(h1)
    return np.dot(x,h1)
        
# result = [[sum(a * b for a, b in zip(A_row, B_col))for B_col in zip(*B)]Sfor A_row in A]


def dft():

    a = np.zeros(25);
    p,m = np.shape
    print(p,m)

dft()

