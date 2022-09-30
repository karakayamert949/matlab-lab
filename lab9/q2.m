clc
clear

%sorudaki degerler
t=[273:5:298];
a=[4.579 6.543 9.209 12.788 17.535 23.756];

%polinom için fit ettim
p=polyfit(t,a,2);
%exponentiali lineere çevirip fit ettim polinom elde ettim
e=polyfit(t,log(a),1);

%erroru bulmak için polinomun degerlerini buldum
polyValues=polyval(p,t);

%fit edilen expo polinomunun 1. katsayısı m'yi, 2. katsayının e üssülü hali
%b'yi veriyor [b*(e^(m*x))]. expo errorunu bulmak için degerleri burada buldum
expoValues=exp(e(2))*exp(e(1)*t);

%polinomun mapesini ve exponun mapesini burada buldum.
MAPEP=100/6 * sum(abs(polyValues-a) ./ a);
MAPEE=100/6 * sum(abs(expoValues-a) ./ a);

%mapep büyükse tahmin için polinomu değilse expoyu kullandım
if MAPEE<MAPEP
    fprintf("the value of P is %f, for T=300",polyval(p,300))
else
    fprintf("the value of P is %f, for T=300",exp(e(2))*exp(e(1)*300))
end

%düzgün smooth bir grafik elde etmek için sorudaki t'yi x'e çevirip fazla
%eleman kullandım ve çizdirmek için bir kez daha polinom ve expo
%değerlerini hesapladım
x=260:1:310;
polyValues=polyval(p,x);
expoValues=exp(e(2))*exp(e(1)*x);

plot(t,a,'o')
hold on
plot(x,polyValues)
plot(x,expoValues)
