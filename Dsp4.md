### MODULE 4: CIRCULAR CONVOLUTION, OVERLAP –ADD AND OVERLAP-SAVE METHODS

1. Circular convolution
a) Problems to be solved analytically (A4)

    I. Find out the circular convolution of two column vectors 𝑥[𝑛]=[1 ,−1 ,−2 ,3 ,−1] and ℎ[𝑛]=[1,2,3] using concentric circle method. Appropriately use zero-padding, if required.
    
    II. Solve Prob. 1(a) using matrix method.

b) Problems to be solved in MATLAB (pdf)

I. Write a MATLAB program to the solution of Prob. 1(a(I)) using the command ‘cconv’ with appropriate choice of resulting vector length. Show that without this choice use of ‘cconv’ and ‘conv’ result in same vector.

II. Write a program in MATLAB to implement circular convolution using matrix method of Prob. 1(a(II)) and show the results in pdf-file. 
    Hint: Use MATLAB command “gallery('circul',vector)” and/or “circshift” to create the circulant matrix of ℎ[𝑛]. Check whether the circulant matrix is same as the matrix obtained analytically.

III. Write a MATLAB program to the solution of Prob. 1(a(I)) using DFT. Hint: 𝑌(𝑘) = 𝐼𝐷𝐹𝑇 {𝐷𝐹𝑇(ℎ[𝑛])·𝐷𝐹𝑇(𝑥[𝑛])}

IV. Comment on the circulant matrix and resultant vector obtained from different methods.

2. Overlap – save method and overlap – add method

    a) Find the output 𝑦(𝑛) of a filter whose impulse response is ℎ(𝑛)=[1 ,1 ,1 ] and input signal 𝑥(𝑛) = [ 3 ,−1 ,0 ,1 ,3 ,2 ,0 ,1 ,2 ,1] by using

    I. Overlap – save method (in A-4) and
    
    II. Overlap – add method (in A-4).

Use MATLAB to compute the necessary circular convolutions.