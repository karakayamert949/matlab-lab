clc;
clear;

res=sqrt(2+nthroot(pi,4));
fprintf("the result a) is %f\n",res);

b=(1-(2/(5+3)))/(1+(2/(5-3)));
fprintf("the result b) is %f\n",b);

c=nthroot(sqrt(132),3)+log(200.4)/45+sin(36*pi/180)+exp(cos(pi));
fprintf("the result c) is %f\n",c);

x=5.1;
y=4.2;

d=(x*y)^2-((x-y)/(x+y)^2)+((x+y)/(2*x-y))^(1/3);

fprintf("the result d) is %f",d);