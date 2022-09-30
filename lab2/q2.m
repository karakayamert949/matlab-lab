clc;
clear;

vec1=linspace(1,3,300);
y1=sin(vec1).*cos(pi*vec1)./((vec1.^3+1).*(vec1+1));
display(y1)

vec2=[2:0.15:4];
y2=(vec2.^2)./(vec2-(1./vec2.^2));
display(y2)
