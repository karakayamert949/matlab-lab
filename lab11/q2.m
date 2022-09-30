clc
clear

%x ve y sorudaki değerler. x1 çizim için x değerleridir. f orijinal
%fonksiyondur.
x=0:5;
x1=0:0.1:5;
y=[1 -0.6242 -1.4707 3.2406 -0.7366 -6.3717];
f=(1.5.^x1).*cos(2*x1);
%interp1'in default hali linear fit yapıyor. sırayla linear spline ve pchip
%metodlarını kullanıp her x1 için y değerlerini buldum sonra sırayla
%çizdirdim
yL=interp1(x,y,x1);
yS=interp1(x,y,x1,"spline");
yP=interp1(x,y,x1,"pchip");

plot(x,y,"*")
hold on
plot(x1,f)
plot(x1,yL)
plot(x1,yS)
plot(x1,yP)
legend("points","original","linear","spline","pchip")
ylabel("y")
xlabel("x")

