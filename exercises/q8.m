clc
clear
%tam sanırım
syms A I lambda k

A=[-26 -33 -25;
    31 42 k;
    -11 -15 -4];
lambda=3;
I=eye(3);
solve(det(A-lambda*I)==0,k)
