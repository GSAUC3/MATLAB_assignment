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
B) Sinusoidal function 
1. Check the values of sin, cos and tan for angles (θ) 0 to 2*π with an interval of π/4. Check exp(j (θ)) for the same values. 

Ans: 
```
= linspace(0,2*pi,9)

%% The spacing between the points is 
(x2-x1)/(n-1). linspace(x1,x2,n)
a =
         0    0.7854    1.5708    2.3562    3.1416    3.9270    4.7124    5.4978    6.2832
>> d= sin(a)

d =
         0    0.7071    1.0000    0.7071    0.0000   -0.7071   -1.0000   -0.7071   -0.0000
d1=cos(a)

d1 =

    1.0000    0.7071    0.0000   -0.7071   -1.0000   -0.7071   -0.0000    0.7071    1.0000

>> d2=tan(a)

d2 =

   1.0e+16 *

         0    0.0000    1.6331   -0.0000   -0.0000    0.0000    0.5444   -0.0000   -0.0000
s=exp(j*(a))

s =

  Columns 1 through 6
   1.0000 + 0.0000i   0.7071 + 0.7071i   0.0000 + 1.0000i  -0.7071 + 0.7071i  -1.0000 + 0.0000i  -0.7071 - 0.7071i

  Columns 7 through 9

  -0.0000 - 1.0000i   0.7071 - 0.7071i   1.0000 - 0.0000i

```
2. How would you calculate the values directly from degrees? (sind, cosd)

ans:
``` 
>>x=linspace(0,360,9)
x =
     0    45    90   135   180   225   270   315   360
>> c=sind(x)
c =
         0    0.7071    1.0000    0.7071         0   -0.7071   -1.0000   -0.7071         0
>> c1=cosd(x)
c1 =
    1.0000    0.7071         0   -0.7071   -1.0000   -0.7071         0    0.7071    1.0000

```

3. Display the angle and the sine values. ('disp') 

ans:
```
>>disp(x)
     0    45    90   135   180   225   270   315   360
>> disp(c)
         0    0.7071    1.0000    0.7071         0   -0.7071   -1.0000   -0.7071         0
```

C) Arrays, logical expression 
1. Input two vectors A = [ 8 5 -4 30] and B = [3 2 4 -5] 
a. Perform addition, subtraction, array multiplication and array division (A*pinv(B)) 

b. C = [A B] and D = [A; B]. 

c. C = A./B - 9*A + A.^B 

d. 	 C = (B - A – 1)- 3*B/5.*A

e. Use the logical expressions  A>B,A<B,A~=B 

```
a. 	>> A = [ 8 5 -4 30] 
A =
     8     5    -4    30
>> B = [3 2 4 -5];
>> A+B
ans =
    11     7     0    25
>> A-B
ans =
     5     3    -8    35

b. 	c=[A B]
c =
     8     5    -4    30     3     2     4    -5
>> d=[A;B]
d =
     8     5    -4    30
     3     2     4    -5

c.	>> C=A./B - 9*A + A.^B
C =
  442.6667  -17.5000  291.0000 -276.0000

d.	>> C = (B - A - 1)- 3*B/5.*A
C =
  -20.4000  -10.0000   16.6000   54.0000

e.	>> A>B
ans =
  1×4 logical array
   1   1   0   1
>> B>A
ans =
  1×4 logical array

   0   0   1   0
>> A~=B
ans =
  1×4 logical array
   1   1   1   1

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
