clc
clear

x=-2:1:2;
y=[1.5 3.2 4.5 3.4 2];

%1/y = x^2/a + b/a

n=length(x);
x1=sum(x);
x2=sum(x.^2);
x3=sum(x.^3);
x4=sum(x.^4);
y1=sum(1./y);
y2=sum(x./y);
y3=sum((x.^2) ./y);

A=[n x1 x2;x1 x2 x3; x2 x3 x4];
B=[y1;y2;y3];

xm=A\B; %Ax=b x=inverse(A)*B
a=1/xm(3);
b=a*xm(1);

xp=-2.5:0.1:2.5;
yp=(a./ (xp.^2+b)); 
plot(x,y,"*");
hold on
plot(xp,yp)


