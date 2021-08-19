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

t=linspace(0,10*pi,100);
y=sin(t);
fs=fft(y);
figure(1);
subplot(2,1,1);
stem(t,y);
xlabel('discrete t');ylabel('sin t');
subplot(2,1,2);
stem(t,fs);
xlabel('discrete t');ylabel('F.T{(sin t)} ');
%cos starts here
x=cos(t);
fc=fft(x);
figure(2);
subplot(2,1,1);
stem(t,x);
xlabel('discrete t');ylabel('cos t');
subplot(2,1,2);
stem(t,fc);
xlabel('discrete t');ylabel('F.T{(cos t)} ');
figure(3);
subplot(2,2,1);
stem(t,real(fs));
ylabel('Real of (F.T{sin t})');xlabel('t');
subplot(2,2,2);
stem(t,imag(fs));
ylabel('Imaginary of (F.T{sin t})');xlabel('t');
subplot(2,2,3);
stem(t,abs(fs));
ylabel('Magnitude of (F.T{sin t})');xlabel('t');
subplot(2,2,4);
stem(t,imag(fs)./real(fs));
ylabel('Phase of (F.T{sin t})');xlabel('t');
figure(4);
subplot(2,2,1);
stem(t,real(fc));
ylabel('Real of (F.T{cos t})');xlabel('t');
subplot(2,2,2);
stem(t,imag(fc));
ylabel('Imaginary of (F.T{cos t})');xlabel('t');
subplot(2,2,3);
stem(t,abs(fc));
ylabel('Magnitude of (F.T{cos t})');xlabel('t');
subplot(2,2,4);
stem(t,imag(fc)./real(fc));
ylabel('Phase of (F.T{cos t})');xlabel('t');
```
<p float="left">
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20b%20sin%20and%20its%20ft.jpg" >
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20b%20sin%20and%20its%20ft.jpg" >
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20b%20cosine.jpg" >
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20b%20sine.jpg" >
</p>
c. Find out the FT of discrete rectangular pulse.

answer:
```Matlab
T = 1;
t = -2.5 : 0.01 : 2.5;
x = rectpuls(t,T);
subplot(2,1,1)
plot(t,x,'r');
axis([-2.5 2.5 0 2])
title({'Rectangular Pulse'})
xlabel({'Time(s)'});
ylabel('Ampltude');
f=fft(x);
subplot(2,1,2)
axis([-5 5 0 5])
plot(t,fftshift(abs(f)));
title('Furier transform of a rectangular pulse');
```
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%203/1%20c%20rectangular%20pulse.jpg">
2. Discrete Fourier transform

a. Find DFT by matrix multiplication of the sequence 𝑥[𝑛]=[1 2 3 4] in your notebook.

answer:
```Matlab
clear
clc
x=[1; 2; 3; 4]; % create 4x4 array
a = zeros(4);
[p,m] = size(a);
for k = 1:1:p
    for n = 1:1:m
        s=(k-1)*(n-1);
        a(k,n ) =exp((-1*1j*2*pi*s)/4); 
    end
end
disp(a*x);
```
Output:
```
  10.0000 + 0.0000i
  -2.0000 + 2.0000i
  -2.0000 - 0.0000i
  -2.0000 - 2.0000i

```
$$
F[x[n]]=
\left(\begin{array}{cc} 
1 & 1 & 1 & 1\\
1 & -j &-1 &j\\
1 & -1 &1 &-1\\
1 & j &-1 &-j\\

\end{array}\right)
\left(\begin{array}{cc} 
1\\ 
2\\ 
3\\ 
4\\ 

\end{array}\right)
$$ 

b. Write the code in MATLAB for the same. Use the command “fft” (algorithm for Fast Fourier transform) in MATLAB to compute the same for N=25. Write which is faster in the discussion(use ‘tic’ and ‘toc’).

answer:
```Matlab
clear
clc
x=linspace(1,25,25);
x=x';
a = zeros(25);
[p,m] = size(a);
%by Matix method
tic
for k = 1:1:p
    for n = 1:1:m
        s=(k-1)*(n-1);
        a(k,n ) =exp((-1*1j*2*pi*s)/4); 
    end
end
toc
disp((a*x));

%by fft
tic
y=(fft(x));
toc
disp((y));
```
OUTPUT:

DFT has a complexity of O(N<sup>2</sup>) whereas FFT has a complexity of O(Nlog(N)). So, obviously fft is much faster than dft. Here's the proof:
```
Elapsed time is 0.004215 seconds.
   1.0e+02 *

   3.2500 + 0.0000i
   0.1300 + 0.1200i
   0.1300 + 0.0000i
   0.1300 - 0.1200i
   3.2500 + 0.0000i
   0.1300 + 0.1200i
   0.1300 + 0.0000i
   0.1300 - 0.1200i
   3.2500 + 0.0000i
   0.1300 + 0.1200i
   0.1300 + 0.0000i
   0.1300 - 0.1200i
   3.2500 + 0.0000i
   0.1300 + 0.1200i
   0.1300 - 0.0000i
   0.1300 - 0.1200i
   3.2500 + 0.0000i
   0.1300 + 0.1200i
   0.1300 - 0.0000i
   0.1300 - 0.1200i
   3.2500 + 0.0000i
   0.1300 + 0.1200i
   0.1300 + 0.0000i
   0.1300 - 0.1200i
   3.2500 + 0.0000i

Elapsed time is 0.000114 seconds.
   1.0e+02 *

   3.2500 + 0.0000i
  -0.1250 + 0.9895i
  -0.1250 + 0.4868i
  -0.1250 + 0.3157i
  -0.1250 + 0.2274i
  -0.1250 + 0.1720i
  -0.1250 + 0.1331i
  -0.1250 + 0.1034i
  -0.1250 + 0.0793i
  -0.1250 + 0.0588i
  -0.1250 + 0.0406i
  -0.1250 + 0.0238i
  -0.1250 + 0.0079i
  -0.1250 - 0.0079i
  -0.1250 - 0.0238i
  -0.1250 - 0.0406i
  -0.1250 - 0.0588i
  -0.1250 - 0.0793i
  -0.1250 - 0.1034i
  -0.1250 - 0.1331i
  -0.1250 - 0.1720i
  -0.1250 - 0.2274i
  -0.1250 - 0.3157i
  -0.1250 - 0.4868i
  -0.1250 - 0.9895i
```
3. Find out the DFT of a sequence given by 𝑥[𝑛]=𝑎<sup>𝑛</sup>𝑢[𝑛] (notebook). Write a MATLAB code for the same for 25 elements (i.e. n=25).

answer:
```Matlab
```
4. Compute the twiddle factor of an 8-point DFT [or N = 8 ].

answer:
```Matlab
clear
clc

a = zeros(8);
[p,m] = size(a);
% twiddle factor

for k = 1:1:p
    for n = 1:1:m
        s=(k-1)*(n-1);
        a(k,n ) =exp((-1*1j*2*pi*s)/4); 
    end
end

disp(a);

```
OUTPUT:
```
  Columns 1 through 4

   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i
   1.0000 + 0.0000i   0.0000 - 1.0000i  -1.0000 - 0.0000i  -0.0000 + 1.0000i
   1.0000 + 0.0000i  -1.0000 - 0.0000i   1.0000 + 0.0000i  -1.0000 - 0.0000i
   1.0000 + 0.0000i  -0.0000 + 1.0000i  -1.0000 - 0.0000i   0.0000 - 1.0000i
   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i
   1.0000 + 0.0000i   0.0000 - 1.0000i  -1.0000 - 0.0000i  -0.0000 + 1.0000i
   1.0000 + 0.0000i  -1.0000 - 0.0000i   1.0000 + 0.0000i  -1.0000 - 0.0000i
   1.0000 + 0.0000i  -0.0000 + 1.0000i  -1.0000 - 0.0000i  -0.0000 - 1.0000i

  Columns 5 through 8

   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i
   1.0000 + 0.0000i   0.0000 - 1.0000i  -1.0000 - 0.0000i  -0.0000 + 1.0000i
   1.0000 + 0.0000i  -1.0000 - 0.0000i   1.0000 + 0.0000i  -1.0000 - 0.0000i
   1.0000 + 0.0000i  -0.0000 + 1.0000i  -1.0000 - 0.0000i  -0.0000 - 1.0000i
   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i
   1.0000 + 0.0000i  -0.0000 - 1.0000i  -1.0000 - 0.0000i  -0.0000 + 1.0000i
   1.0000 + 0.0000i  -1.0000 - 0.0000i   1.0000 + 0.0000i  -1.0000 + 0.0000i
   1.0000 + 0.0000i  -0.0000 + 1.0000i  -1.0000 + 0.0000i   0.0000 - 1.0000i


```
