# EXPRESSIONS AND FIGURES REQUIRED FOR THIS MODULE
### Discrete convolution: π¦[π]= $\sum_{k = -\infty}^{\infty}$ π₯[π]β[πβπ]
### Discrete correlation: πΎπ₯π¦(π)=$\sum_{ -\infty}^{\infty}$π₯[π]π¦[πβπ]

***

1. Discrete rectangular function
a. Find out the convolution of π₯[π] with itself numerically and by matrix method in your notebook.

answer:
```Matlab

To be done in notebook
```
b. Create a discrete rectangular pulse as shown π₯[π]= [ 1 1 1 1 1β], where the arrowed element represents n = 0. Perform the operation in MATLAB using 'conv' function and plot π₯[π] and the convolution in the same graph.

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
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%202/1%20b.jpg" width=480 height=360>

2. Convolution with delta function
a. Deduce the output function for an input π₯[π] convolved with discrete delta function πΏ[π] (in your notebook).

answer:
```Matlab
To be done in notebook
```
b. Create a discrete Gaussian function and a shifted discrete delta function and perform their convolution operation in MATLAB. (Hint. βgaussmfβ).

answer:
```Matlab

n=-10:1:10;
g=gaussmf(n,[5,0]); 
%f(x;Ο,c)=e^[β(xβc)^2/2Ο^2]
%To specify the standard deviation, Ο, and mean, c, for the Gaussian function, use params.
stem(n,g,'-ro');
grid on
xlabel('Discrete time samples [n]');
ylabel('x[n]');
title('Discrete Gaussian Function');
% Shifted Delta Function
n=-10:1:10;
y=dirac(n-2); %d = dirac(x) represents the Dirac delta function of x.
index=y==inf;
y(index)=1;
stem(n,y,'-or');
xlabel('Discrete time samples [n]');
ylabel('x[n]');
title('Shifted Discrete Delta Function');
grid on
% Convolution of Discrete gaussian Function and Shifted Delta Function 
c=conv(g,y,'same');
stem(n,c,'-rs');
xlabel('Discrete time samples [n]');
title('Convolution of Discrete Gaussian and Shifted Discrete Delta Function');
grid on
```
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%202/2%20b.jpg" width=480 height=360>

c. Create a discrete pulse train (comb function) and find out the convolution of it with the Gaussian. Use βpulstranβ to create pulse train.

answer:
```Matlab
%Let the pulse train repeats itslef with a frequency 0.5Hz, the signal lasts
%for 60 seconds, and the samplerate is 1 KHz. The gain  factor is a
%sinusoidal of frequency 0.05 Hz. 
%Generating the pulsetrian
t = 0:1/1e3:60;
d = [0:2:60;sin(2*pi*0.05*(0:2:60))]';
x = @rectpuls;
%https://www.mathworks.com/help/signal/ref/pulstran.html
y = pulstran(t,d,x); %All deafult values from MATLAB help
plot(t,y)
xlabel('Time (s)')
ylabel('Waveform')
title('Rectangular Pulsetrian');
grid on
%Discrete Gaussian Function
n=-10:1:10;
g=gaussmf(n,[5,0]); %This function computes fuzzy membership values using a Gaussian membership function. You can also compute this membership function using a fismf object. y = gaussmf(x,params) returns fuzzy membership values computed using the following Gaussian membership function:
%f(x;Ο,c)=e^[β(xβc)^2/2Ο^2]
%To specify the standard deviation, Ο, and mean, c, for the Gaussian function, use params.
stem(n,g,'-ro');
grid on
xlabel('Discrete time samples [n]');
ylabel('x[n]');
title('Discrete Gaussian Function');
%Convolution of Pulse train 
c=conv(y,g,'same');
plot(t,c,'-gs');
xlabel('time samples');
title('convolution of comb function with gaussian function');
grid on
```
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%202/2%20c.jpg" width=480 height=360>

3. Correlation
a. Create two 1D vectors [1 2 3 4] and [4 3 2 1] and calculate their correlation.

answer:
```Matlab
x=[1 2 3 4];
y=[4 3 2 1];
a=xcorr(x,y);
stem(a);
xlabel('Values');
title('Correlation of x and Y vector');
grid on
```
<img src="https://github.com/Dummyjar/MATLAB/blob/master/dsp%202/3%20a.jpg" width=480 height=360>

b. Perform the correlation using βxcorrβ in MATLAB. How would you be able to perform convolution using βxcorrβ function

answer:
```Matlab
% As we know r = xcorr(x,y) returns the cross-correlation of two discrete-time sequences. 
%Cross-correlation measures the similarity between a vector x and shifted (lagged) copies 
%of a vector y as a function of the lag. If x and y have different lengths, the function appends
%zeros to the end of the shorter vector so it has the same length as the other.
%Convolution using βxcorrβ- Convolution using xcorr function is possible along with certain
%limitation. We know from the definition of xcorr function that
%xcorr(x,y)=conv(x,fliplr(y))
%where fliplr(y) returns the flipped version of a certain vector y , it may be any vector x or y ,
%but the limitation is the vector must be two dimensional otherwise the axis of flip need to
%be defined. So we can define the flipped version of the function that we
%want to convolve with the another function and use the xcorr function to flip it again and essentially perform convolution.  
```
