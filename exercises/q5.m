clc
clear
close all
%tam
t=-2*pi:0.1:2*pi;
x=cos(t).^3;
y=sin(t).^3;

x2=cos(t).*(8+5*cos(2*t)+3*cos(6*t)./13+3*cos(4*t));
y2=4*sin(t).^3 .*(7+6*cos(2*t)+3*cos(4*t) ./ 13+3*cos(4*t)); 
plot(x,y)
hold on

plot(x2,y2)

xlabel("x axis")
ylabel("y axis ");
legend("astroid","catacaustic")
title("q5")