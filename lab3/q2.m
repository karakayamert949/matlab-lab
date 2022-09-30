clc;
clear;

alfa=3;
t=[-2*pi:0.01:2*pi];

x1=4*alfa*((1-3.*t.^2)./(1+t.^2).^3);
y1=4*alfa*((t.*(3-t.^2))./(1+t.^2).^3);

b=2.2;
k=0.5;

x2=b*(t.*cos(t)+k*t);
y2=b*t.*sin(t);

plot(x1,y1)
title("Cayley's Curve")
xlabel("x axis")
ylabel("y axis")

hold on
plot(x2,y2)
legend("cayley's curve","doppler spiral")
hold off

