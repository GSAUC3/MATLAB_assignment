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
x=linspace(-10,10,21);
d1=logical(dirac(x));
d2=logical(dirac(x-1));
d3=logical(dirac(x-2));
f1=(fft(d1));
f2=(fft(d2));
f3=(fft(d3));
figure(1);
subplot(2,2,1);
plot(x,real(f1));
grid on;
xlabel('x (discrete values)');
ylabel('real value of fft{dirac delta at x=0}');
title('real part vs discrete sample values');
subplot(2,2,2);
plot(x,imag(f1));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=0}');
title('imaginary part vs discrete sample values');
subplot(2,2,3);
plot(x,abs(f1));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=0}');
title('imaginary part vs discrete sample values');
subplot(2,2,4);
plot(x,atand(imag(f1)./real(f1)));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=0}');
title('imaginary part vs discrete sample values');
figure(2)
subplot(2,2,1);
plot(x,real(f2));
grid on;
xlabel('x (discrete values)');
ylabel('real value of fft{dirac delta at x=1}');
title('real part vs discrete sample values');
subplot(2,2,2);
plot(x,imag(f2));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=1}');
title('imaginary part vs discrete sample values');
subplot(2,2,3);
plot(x,abs(f2));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=1}');
title('imaginary part vs discrete sample values');
subplot(2,2,4);
plot(x,atand(imag(f2)./real(f2)));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=1}');
title('imaginary part vs discrete sample values');
figure(3)
subplot(2,2,1);
plot(x,real(f3));
grid on;
xlabel('x (discrete values)');
ylabel('real value of fft{dirac delta at x=2}');
title('real part vs discrete sample values');
subplot(2,2,2);
plot(x,imag(f3));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=2}');
title('imaginary part vs discrete sample values');
subplot(2,2,3);
plot(x,abs(f3));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=2}');
title('imaginary part vs discrete sample values');
subplot(2,2,4);
plot(x,atand(imag(f3)./real(f3)));
grid on;
xlabel('x (discrete values)');
ylabel('imaginary value of fft{dirac delta at x=2}');
title('imaginary part vs discrete sample values');
```
<p float="left">
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20n%20is%200.jpg" >
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20n%20is%201.jpg" >
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20n%20is%202.jpg" >
</p>

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
