clc
clear

x=-2:1:2;
y=[1.5 3.2 4.5 3.4 2];

%1/y = x^2/a + b/a

p=polyfit(x,1./y,2);

a=1/p(1);
b=p(3)*a;

xp=-2.5:0.1:2.5;
yp=a./(xp.^2+b);
plot(x,y,"*");
hold on
plot(xp,yp)


