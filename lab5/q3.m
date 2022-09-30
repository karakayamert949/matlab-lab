clc;
clear;

d=16;
t(1)=0;
i=1;
while d>15;
    x(i)=5*t(i)-10;
    y(i)=25*t(i)^2 -120*t(i) + 144;
    d(i)=(x(i)^2 + y(i)^2)^(1/2);
    i=i+1;
    t(i)=t(i-1)+0.01;
end
%t(end) yani 165. terimin değeri 1.64, 1.64 için distance değeri 14.5518.
%t'nin 164. değeri ise 14.9375 yani 165. terim fazlalık
t(end)=[];
plot(t,d)
title("distance from the origin");
xlabel("t value");
ylabel("distance");

