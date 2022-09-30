clear
clc
close all
%matrix
syms x y
A=[0 1 3; 2 x 4; y 1 7];

%x değerlerini oluşturdum, determinant eşitliğini s'ye atadım, y
%değerlerini bulmak için boş küme yarattım.
x1=-5:0.1:1;
s=det(A);
y=[];

%x'in tüm değerleri için s eşitliğine x'in değerini yerleştirdim ve 0'a
%eşitleyip o x değeri için y'yi buldum daha sonra grafiği çizdirdim
for i=1:length(x1)
    s2=subs(s,x,x1(i));
    y(i)=solve(s2==0);
end

plot(x1,y,"-o");