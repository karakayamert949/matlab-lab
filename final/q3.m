%mert karakaya 090210362
clc
clear
close all

x=1:6;
y=[100 150 175 190 260 300];
%lny= lna + xlnb;
n=length(x);
x1=sum(x);
x2=sum(x.^2);
y1=sum(log(y));
y2=sum(x.*log(y));

A=[n x1;x1 x2];
b=[y1;y2];

xt=A\b;

a=exp(xt(1));
b=exp(xt(2));

xp=0:0.1:7;
yp=a*b.^xp;
plot(x,y,"r*")
hold on
plot(xp,yp,"b")

fprintf("Fitted function = %f*%f^x",a,b)
xlabel("x")
ylabel("y")
legend("data","fitted function")
title("fitting data")

yi=a*b.^4.5;

fprintf("\nFunction value at x=4.5 is %f",yi)