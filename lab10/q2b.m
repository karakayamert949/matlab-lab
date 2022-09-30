clc
clear
close all

syms k x y

y=-k* x^2 + 12*k*x;
%integral of y
iY=int(y,x,0,12);
%15*12/2=90 kırmızı alan 90 olmalı, alanı 90 yapan k değerini buluyorum
k=solve(iY==90);
fprintf("k must be %f",double(k))
