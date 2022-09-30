clc
clear
format long
% tam
x=pi/4;
n=0;
a=sin(pi/4);
poly=0;
count=0;
while abs(poly-a)>1*10^-4
    t=poly;
    poly=((-1)^n *(x^(2*n+1)))/factorial(2*n+1);
    poly=poly+t;
    n=n+1;
    count=count+1;
end
poly
count
n