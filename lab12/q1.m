clc
clear
close all

%y=a*b^x
%lny=lna+xlnb
%n=lna m=lnb y2=lny
%y2=mx+n

x=[1 2 4 5 6 8];
y=[1 3 6 8 14 16];

%Ax=b
%x=inv([n,x1;x1 x2])*[y1;y2]
%eşitliğin solu
n=length(x);
x1=sum(x);%eşitliğin solunda sağ üstte ve sol alttaki değer
x2=sum(x.^2);
%eşitliğin sağı
y1=sum(log(y));%polinoma çevirdiğimizde y'yi ln'li bulmuştuk;
y2=sum(x.*log(y));

A=[n x1;x1 x2];
B=[y1;y2];
xm=A\B; %Ax=b x=inverse(A)*B
a=exp(xm(1));%polinoma çevirdiğimizde a ln'liydi
b=exp(xm(2));

xp=1:0.1:8;%plot x'i ve y'si fit edilen
yp=a*b.^xp;
plot(xp,yp,x,y,"*")

y3=a*b^3;

fprintf("a is %f \nb is %f\ny is %f when x=3",a,b,y3)