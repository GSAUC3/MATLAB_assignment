clear
clc
x=[1 -1 -2 3 -1];
x1=(x');
h=[1 2 3 0 0];
h1=[1 0 0 3 2; 2 1 0 0 3; 3 2 1 0 0; 0 3 2 1 0; 0 0 3 2 1];
y=h1*(x1);  
disp(y);

fx=fft(x);
fh=fft(h);
a=ifft(fx.*fh);
disp(a);

h2=[circshift(h,1);circshift(h,2);circshift(h,3);circshift(h,4);circshift(h,5)];
disp(h2*x1);