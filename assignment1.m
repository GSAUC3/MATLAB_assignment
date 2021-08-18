d=linspace(0,360,20);
s=sind(d);
c=cosd(d);
t=tand(d);
plot(d,t);
xlabel('d');
ylabel('tan d');
plot(d,s);
xlabel('d');
ylabel('sin d');
plot(d,c);
xlabel('d');
ylabel('cos d');
e=exp(i*d);
plot(real(e),imag(e));
title('Graph of real vs imaginary part of e^(i*theta)')
xlabel('Real part of e');
ylabel('Imaginary part of e');

%answer of 3d plot
d=linspace(0,360,20);
s=sind(d);
c=cosd(d);
t=tand(d);
plot3(c,s,d)
