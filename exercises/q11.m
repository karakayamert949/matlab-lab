clc
clear
close all
syms x y

ezplot("-1+(((x-1)^2 / 6^2)+ (y^2 / 3^2))",[-2*pi 3*pi])

hold on
ezplot("(((x+2)^2)/4)+ ((y-5)^2 / 16)-1",[-2*pi 3*pi])

int(int(x^2*cos(x*y),x),y)
limit(abs(x)/x,x,0,"left")
int(cos(x)^2 / 1+sin(x)^2,0,pi)
