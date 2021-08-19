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



clear
clc
x=[1 -1 -2 3 -1];
h=[1 2 3 0 0];
a = zeros(5);
[p,m] = size(a);
%by Matix method

for k = 1:1:p
    for n = 1:1:m
        s=(k-1)*(n-1);
        a(k,n ) =exp((-1*1j*2*pi*s)/5); 
    end
end
dftx=a*x';
dfth=a*h';

