# DIGITAL SIGNAL PROCESSING (DSP)
MODULE 3: DISCRETE FOURIER TRANSFORM

***
$X(e^{j\omega}) = F(x(n)) = \sum_{n = -\infty}^{\infty} f(n)e^{j\omega n} $

$x(n)=F^-1[X(e^{j\omega})]=\frac{1}{2\pi}\left(\int_{-\pi}^{\pi} X(e^{j\omega})e^{j\omega n} \; d\omega\right)$

***
EXPRESSIONS AND FIGURES REQUIRED FOR THIS MODULE
Discrete Fourier Transform (DFT):
Inverse DFT (IDFT):
PROBLEMS (PROVIDE LABELS AND TITLES OF THE PICTURES, CLEARLY)
1. Fourier transform (FT) of common functions using ‘fft’ and ‘fftshift’ in MATLAB

a. Find out the FT of discrete delta functions situated at 𝑛=0,1 𝑎𝑛𝑑 2, where −10≤𝑛≤10. Plot the graphs of real, imaginary, magnitude and phase parts, separately.

answer:
```Matlab
```
b. Find out the FT of discrete cosinusoidal and sinusoidal signals with 5 cycles over the entire array-range of 𝑛=100 𝑎𝑛𝑑 101. Plot the graphs of real, imaginary, magnitude and phase parts, separately with frequency axis properly calculated. Check how the FT-patterns vary if the no. of arrays are equal to 2<sup>p</sup>, where 𝑝=6,7,8 𝑎𝑛𝑑 16.

answer:
```Matlab
```
c. Find out the FT of discrete rectangular pulse.

answer:
```Matlab
```
2. Discrete Fourier transform

a. Find DFT by matrix multiplication of the sequence 𝑥[𝑛]=[1 2 3 4] in your notebook.

answer:
```Matlab
```
b. Write the code in MATLAB for the same. Use the command “fft” (algorithm for Fast Fourier transform) in MATLAB to compute the same for N=25. Write which is faster in the discussion(use ‘tic’ and ‘toc’).

answer:
```Matlab
```
3. Find out the DFT of a sequence given by 𝑥[𝑛]=𝑎<sup>𝑛</sup>𝑢[𝑛] (notebook). Write a MATLAB code for the same for 25 elements (i.e. n=25).

answer:
```Matlab
```
4. Compute the twiddle factor of an 8-point DFT [or N = 8 ].

answer:
```Matlab
```
