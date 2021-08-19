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


x1=([0 ,0 ,3 ,-1, 0])
x2=[-1, 0, 1 ,3, 2]
x3=[3, 2, 0, 1, 2]
x4=[1, 2, 1 ,0, 0]
h=([1, 1, 1 ,0, 0])

print(cconv(h,x1))
