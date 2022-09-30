clc
clear

x=0:0.1:11;
h=[1 0];
l=[-2 40];
w=[-2 22];

temp=conv(h,l);
p=conv(temp,w);
V=polyval(p,x);

plot(x,V)

p1000=p;
p1000(end)=p1000(end)-1000;
rootValues=roots(p1000);
fprintf("x is %f when volume is 1000\n",rootValues(find(rootValues>0 & rootValues<11)));

derivP=polyder(p);
temp1=roots(derivP);
rDerivP= temp1(find(11>=temp1 & temp1>=0));
largestV=polyval(p,rDerivP);
fprintf("x is %f when volume is %f which is the largest possible volume value",rDerivP,largestV)
