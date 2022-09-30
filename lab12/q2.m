clc
clear
close all

x=[13.5 13 14.5 13 18.5 19.5 16.5 12 18.5 16];
y=[17.75 8 15.25 14.5 17.25 14.5 12.75 15.25 15.75 15.75];
f=[80.6 66.3 54.3 76.5 86 77.6 84.1 81.4 81.9 91.2];
%a+bx+cy
%A=[n x1 y1;x1 x2 y2; y1 y2 y3]
%B=[f1;f1*x1;f1*y1]
%x=inv(A)*B
%x(1)=a
%x(2)=b
%x(3)=c

n=length(x);
x1=sum(x);
x2=sum(x.^2);
y1=sum(y);
y2=sum(x.*y);
y3=sum(y.^2);
f1=sum(f);
f2=sum(f.*x);
f3=sum(f.*y);

A=[n x1 y1;x1 x2 y2; y1 y2 y3];
B=[f1;f2;f3];

xm=A\B; %Ax=b x=inverse(A)*B
a=xm(1);
b=xm(2);
c=xm(3);
est=a+b*17+c*16.75;

fprintf("a is %f \nb is %f\nc is %f\nestimated final grade is %f when hw1=17 and hw2=16.75",a,b,c,est)

