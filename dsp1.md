# DSP module 1

1. Store a = pi and explain b = uint8(a). Try this with complex number 'i' and 'j'. 
2. Check what are maximum and minimum no. that can be represented in MATLAB. What will happen if you use a number more than the maximum no.? 

ans: Code is written in command line, not editor.
```
1.	 pi
ans= 3.1416
>> a=pi;
>> b=uint8(a)
b =
  uint8
   3
b=uint8(i)
b =
  uint8
   0 +   1i
B=uint(i+j)
B= 
uint8
0+2i

2.	>> intmax

ans =

  int32
2147483647
>> intmin
ans =
  int32
 -2147483648

```


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
