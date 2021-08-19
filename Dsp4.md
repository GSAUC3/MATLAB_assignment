### MODULE 4: CIRCULAR CONVOLUTION, OVERLAP –ADD AND OVERLAP-SAVE METHODS

1. Circular convolution
a) Problems to be solved analytically (A4)

I. Find out the circular convolution of two column vectors 𝑥[𝑛]=[1 ,−1 ,−2 ,3 ,−1] and ℎ[𝑛]=[1,2,3] using concentric circle method. Appropriately use zero-padding, if required.

```Matlab
clear
clc
x=[1 -1 -2 3 -1];
h=[1 2 3 0 0];
fx=fft(x);
fh=fft(h);
a=ifft(fx.*fh);
disp(a);

```
  OUTPUT:
  ```
        8.0000   -2.0000   -1.0000   -4.0000   -1.0000
  ```  
II. Solve Prob. 

1(a) using matrix method.
```
Matrix Multiplication Method algo --
Two given sequence x1(n) and x2(n) in matrix form.

1. x1 is repeated via circular shift of one sample at a time to form a n X n matrix.

2. x2 as column matrix.

3.The multiplication of two matrices = circular convolution.
```
CODE:
```Matlab
clear
clc
x=[1 -1 -2 3 -1];
x1=(x');
h=[1 2 3 0 0];
h1=[1 0 0 3 2; 2 1 0 0 3; 3 2 1 0 0; 0 3 2 1 0; 0 0 3 2 1];
y=h1*x1;  
disp(y);

```
output:
```
     8
    -2
    -1
    -4
    -1

```
b) Problems to be solved in MATLAB (pdf)

I. Write a MATLAB program to the solution of Prob. 1(a(I)) using the command ‘cconv’ with appropriate choice of resulting vector length. Show that without this choice use of ‘cconv’ and ‘conv’ result in same vector.

```Matlab
clear
clc
x=[1 -1 -2 3 -1];
h=[1 2 3];

y=cconv(x,h);  
disp(y);

```
output:
```
    1.0000    1.0000   -1.0000   -4.0000   -1.0000    7.0000   -3.0000
```

II. Write a program in MATLAB to implement circular convolution using matrix method of Prob. 1(a(II)) and show the results in pdf-file. 
    Hint: Use MATLAB command “gallery('circul',vector)” and/or “circshift” to create the circulant matrix of ℎ[𝑛]. Check whether the circulant matrix is same as the matrix obtained analytically.

```Matlab
clear
clc
x=[1 -1 -2 3 -1];
x1=(x');
h=[1 2 3 0 0];
h2=[circshift(h,1);circshift(h,2);circshift(h,3);circshift(h,4);circshift(h,5)];
disp(h2*x1);

```
output:
```
     4
     1
     4
    -2
    -7
```
III. Write a MATLAB program to the solution of Prob. 1(a(I)) using DFT. Hint: 𝑌(𝑘) = 𝐼𝐷𝐹𝑇 {𝐷𝐹𝑇(ℎ[𝑛])·𝐷𝐹𝑇(𝑥[𝑛])}

IV. Comment on the circulant matrix and resultant vector obtained from different methods.

2. Overlap – save method and overlap – add method

    a) Find the output 𝑦(𝑛) of a filter whose impulse response is ℎ(𝑛)=[1 ,1 ,1 ] and input signal 𝑥(𝑛) = [ 3 ,−1 ,0 ,1 ,3 ,2 ,0 ,1 ,2 ,1] by using

    I. Overlap – save method (in A-4) and
    
    II. Overlap – add method (in A-4).

Use MATLAB to compute the necessary circular convolutions.