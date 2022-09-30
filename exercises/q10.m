clc
clear
close all
%240 -8*x-60
x=0:0.1:22.5;
V=x.*(x+15).*(45-2*x);
plot(x,V)
find(V==max(V))
x(find(max(V)==V))
