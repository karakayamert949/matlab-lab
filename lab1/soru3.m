clc;
clear;

b1=180;
b2=165;
c1=115;

A1=120;
A2=100;

a=sqrt(b1^2+c1^2-2*b1*c1*cos(A1*pi/180));

fprintf("a is %f m\n",a);

B2=asin(b2/(a/sin(A2*pi/180)));
B2=B2*180/pi;

C2=180-B2-A2;

fprintf("C2 is %f angle\n",C2);

c2=sqrt(a^2+b2^2 -2*a*b2*cos(C2*pi/180));

fprintf("c2 is %f m",c2);
