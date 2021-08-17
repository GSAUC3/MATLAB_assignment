# EXPRESSIONS AND FIGURES REQUIRED FOR THIS MODULE
### Discrete convolution: 𝑦[𝑛]= $\sum_{k = -\infty}^{\infty}$ 𝑥[𝑘]ℎ[𝑛−𝑘]
### Discrete correlation: 𝛾𝑥𝑦(𝑙)=$\sum_{ -\infty}^{\infty}$𝑥[𝑛]𝑦[𝑛−𝑙]

***

1. Discrete rectangular function
a. Find out the convolution of 𝑥[𝑛] with itself numerically and by matrix method in your notebook.

answer:
```Matlab
```
b. Create a discrete rectangular pulse as shown 𝑥[𝑛]= [ 1 1 1 1 1↑], where the arrowed element represents n = 0. Perform the operation in MATLAB using 'conv' function and plot 𝑥[𝑛] and the convolution in the same graph.

answer:
```Matlab
n=-10:1:10;
y=(n>=-2)-(n>=3);
stem(n,y);
grid on
xlabel('Discrete time samples [n]');
ylabel('x[n]');
title('Discrete Rectangular pulse');
%Convolution of the Discrete Rectangular Pulse with Itself - 
c=conv(y,y,'same'); %conv(u,v,'same') returns only the central part of the convolution, the same size as u
stem(n,y,'r');
hold on %for plotting the DRP and the conv on the same graph
stem(n,c);
hold off
xlabel('Discrete time samples [n]');
title('x[n] and convolution of x[n] with itself');
grid on
```
2. Convolution with delta function
a. Deduce the output function for an input 𝑥[𝑛] convolved with discrete delta function 𝛿[𝑛] (in your notebook).

answer:
```Matlab
```
b. Create a discrete Gaussian function and a shifted discrete delta function and perform their convolution operation in MATLAB. (Hint. ‘gaussmf’).

answer:
```Matlab
```
c. Create a discrete pulse train (comb function) and find out the convolution of it with the Gaussian. Use ‘pulstran’ to create pulse train.

answer:
```Matlab
```
3. Correlation
a. Create two 1D vectors [1 2 3 4] and [4 3 2 1] and calculate their correlation.

answer:
```Matlab
```
b. Perform the correlation using ‘xcorr’ in MATLAB. How would you be able to perform convolution using ‘xcorr’ function

answer:
```Matlab
```