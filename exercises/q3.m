clc
clear
%eksik
%1./y una çevir ln alakasız
x=2:2:10;
y=[5.3 6.31 7.4 9.1 11.65];

%1/y= Bx+2 / A
p=polyfit(x,1./y,1)
A=2/p(2);
B=p(1)*A;


xp=1.8:0.1:10.5;
yp=A./(B.*xp+2);
plot(x,y,"*");
hold on
plot(xp,yp)
