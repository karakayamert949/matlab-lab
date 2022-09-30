clc
clear
close all
%soruyu anlamadım
x=0:0.1:100;
z=0:0.1:100;

fimplicit3(@(x,y,z) y.^2-x.*z,[0 10 -10 10 0 10])