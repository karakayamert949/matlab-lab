clc 
clear
close all

syms x y
y= (3/2)*(x-3)^2 + 1;

ezplot(y,[0 6 0 7])
intersect=solve(y==4);
x1=min(intersect);
x2=max(intersect);
area=double(int(y,x,x1,x2));
fprintf("The area is %f",area)
