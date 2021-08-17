1. Plot angle vs sine, cosine and tangent of angle 𝜃 where 0≤𝜃≤2𝜋. Plot real and imaginary values of exp(𝑗𝜃) in a separate figure. 
a. Label X and Y axis and put a suitable title of the graph using “xlabel”, “ylabel” and “title” commands. Use “axis” command to limit the X and Y axis of the graph. 
b. Insert all of the above commands from apart from “axis” from the figure window. 

ans:

```
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


```