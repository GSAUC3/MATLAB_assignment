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
2. Create an array X with 10 elements starting from 1 to 19 with an interval of 2. 
a. Another array y = 1./x and w = y’ (transpose), u = x*y’ 
```
a=linspace(1,19,10)
a =
     1     3     5     7     9    11    13    15    17    19

y = 1./a;
>> y
y =
    1.0000    0.3333    0.2000    0.1429    0.1111    0.0909    0.0769    0.0667    0.0588    0.0526

>> w = y' 
w =

    1.0000
    0.3333
    0.2000
    0.1429
    0.1111
    0.0909
    0.0769
    0.0667
    0.0588
    0.0526

>> u = a*y'
u =
    10
```
b. Create another array with ex and present the element and set of data side by side. 
```
p=exp(a)
p =
   1.0e+08 *

    0.0000    0.0000    0.0000    0.0000    0.0001    0.0006    0.0044    0.0327    0.2415    1.7848
```
3. Matrix D contains the following values: 

5 	6 	2 

-10 	3 	21 

4 	10 	1 

 Write down the values you would expect the matrix E to take after executing the following statements. 

`a. E = D(1:2,2:3) `

`b. E = D(1:2:3,3:-1:2)` 
```
>> d=[5 6 2; -10 3 21; 4 10 1]

d =

     5     6     2
   -10     3    21
     4    10     1
>> E=d(1:2,2:3)

E =

     6     2
     3    21
>> e=d(1:2:3,3:-1:2)

e =

     2     6
     1    10
```

c. Write down the MATLAB commands you would use to extract the following elements from D 

(i) Row 1 

(ii) The sub-array:
5 	2 
-10 	21 
```
i.	disp(d(1:1,:))

     	       5     6     2
ii.	disp(d(1:2,1:2:3))
     5     2
   -10    21
```

D) Use of Plot function 


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

2. Create an array of time (𝑡) using 'linspace' function. Plot the parametric function 𝑥 = 𝑐𝑜𝑠(𝑡), 𝑦 = 𝑠𝑖𝑛(𝑡) and 𝑧 = 𝑡 using 'plot3' function. Plot different projections of the parametric function along XY, YZ and ZX plane using 'view' functions. 
```
d=linspace(0,360,20);
s=sind(d);
c=cosd(d);
t=tand(d);
plot3(c,s,d)
```
 
   
E) Generation of signals (write mathematical expression for each of the function and describe in words of the summary of what you have done for each of the problem). 
1. Unit step and sinusoidal functions 
a. Create an array of 100 elements using “ones” and “zeros”. Create an array “unit step” by making first 50 elements to be 0 and next 50 to be 1. Use “stem” to plot the graph with suitable title, X and Y labels. 
```
z= zeros(50);
o=ones(50);
unit_step=[z;o];

stem(unit_step);
  
 
```

b. Create an array of 𝑡 where −2𝜋≤ 𝑡≤ 2𝜋 using “linspace”. Create a sinusoidal function and plot it with respect to time. 

c. Multiply 𝑠𝑖𝑛(𝑡) and unit step function and plot the entire graph in the same window. 

2. Plot a ramp 𝑢𝑟(𝑡) with same time axis. Provide a shift of 2 sec along t-axis. 
```
t = linspace(-2*pi,2*pi);
u=t-2;
u=u.*(u>0);
plot(t,u);
```

