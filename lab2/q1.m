s
clc;
clear;
n=input("what is the length of the vector? ");
t=2+rand(n,1);

a=exp(t).*(1+sin(2*t));
display(a)

b=cos(t).^3+sin(t).^3;
display(b)

c=((sec(t).^2))./csc(t)+2;
display(c)

d=log(2+t+t.^3)/log(10);
display(t)

