% answer of 1
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

% answer 2

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

