clc;
clear;

P=800;
L=50000;
r=0.15;

N=log(P/(P-r*L/12))/(12*log(1+r/12));
fprintf("the result is %0.f months\n",N*12);