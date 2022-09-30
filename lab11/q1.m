clc
clear

%week ve height sorudaki değerler. w1'i çizim için week olarak kullandım. 
week=1:2:13;
w1=1:0.1:13;
height=[22 51 127 202 227 248 252];

% polyfitte height'i kullanabilmek için düzenleme yapmak gerekti. sol tarafını y'ye eşitledim
y=254./height -1;
% düzenledikten sonra eşitliğin 
%t=week
% 254/height -1 = A*exp(-B*week)
% y=254/height -1
% ln(y)=ln(A*exp(-B*week))
% ln(y)=ln(A)-B*week
%polinoma sonunda çevirdim. polyfit fonksiyonuna y'yi ln'li koymam lazım.
%week ln'siz çıktı. doğdudan yazıyorum

c=polyfit(week,log(y),1);
%polyfitin verdiği c vektörünün ilk elemanı B'nin eksilisini veriyor
% (burada week'i x olarak düşüneceğiz) polinoma çevirme işleminde ln(A)
% bulmuştuk bu yüzden c(2)'nin exp'sini almamız gerekiyor 

A=exp(c(2));
B=-c(1);
%fit edilmiş height
heightFit=254 ./ (A*exp(-B*w1) +1);
plot(week,height,"*")
hold on
plot(w1,heightFit)
legend("data","fit")
ylabel("height(cm)")
xlabel("week")

