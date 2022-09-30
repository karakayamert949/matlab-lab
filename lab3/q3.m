clc;
clear;

va=40;
theta=30;
g=9.8;

time_hit=2*(va/g)*sin(theta*pi/180);

t=[0:0.1:time_hit];

height=va*t*sin(theta*pi/180)-((1/2)*g*t.^2);

maxh=max(height);

index=find(height==maxh);

fprintf("the time when projectile has maximum height is %.2f s \n",t(index));

speed=sqrt(va^2-2*va*g*t*sin(theta*pi/180)+(g^2)*(t.^2));

index1=find(height<5 | speed>35);
fprintf("range of time(s) when the height is less than 5 m or the speed is greater than 35 m/s : %0.2f s\n",t(index1))

plot(t,height)
hold on
plot(t,speed)
hold off
legend("height","speed")
title("height and speed graph")
xlabel("time(s)")
ylabel("speed(m/s) and height(m)")