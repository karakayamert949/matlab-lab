clc;
clear;

x1=linspace(-2,2);
y1=linspace(-2,2);
[x2,y2]=meshgrid(x1,y1);
z=x2.^2 +x2.*y2 + y2.^3 -2;
surf(x2,y2,z);
hold on;

z=3.*x2 + 4.*y2 - 6;
surf(x2,y2,z);
hold on;

t=linspace(-2,2);
x=1-3*t;
y=1-4*t;
z=1+t;

plot3(x,y,z);
hold off;

