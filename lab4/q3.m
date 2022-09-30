clc;
clear;

pic=imread("peppers.png");
pic2=pic;

% resmin kırmızı yeşil ve mavi katmanlarını alıyoruz
rc=pic(:,:,1);
gc=pic(:,:,2);
bc=pic(:,:,3);

% kırmızı katmandaki değeri 127den az olan ve yüksek olan değerlerin indekslerini iki
% ayrı vektöre atıyoruz
ri=find(rc<127);
ri2=find(rc>=127);

% yeşil katmandaki değeri 127den az olan ve yüksek olan değerlerin indekslerini iki
% ayrı vektöre atıyoruz
gi=find(gc<127);
gi2=find(gc>=127);

% mavi katmandaki değeri 127den az olan ve yüksek olan değerlerin indekslerini iki
% ayrı vektöre atıyoruz
bi=find(bc<127);
bi2=find(bc>=127);

%kırmızı katmandaki değeri 127den az olan indekslerdeki değeri 0 yapıyoruz
rc(ri)=0;
%kırmızı katmandaki değeri 127den fazla olan indekslerdeki değeri 255 yapıyoruz
rc(ri2)=255;

%yeşil katmandaki değeri 127den az olan indekslerdeki değeri 0 yapıyoruz
gc(gi)=0;
%yeşil katmandaki değeri 127den fazla olan indekslerdeki değeri 255 yapıyoruz
gc(gi2)=255;

%mavi katmandaki değeri 127den az olan indekslerdeki değeri 0 yapıyoruz
bc(bi)=0;
%mavi katmandaki değeri 127den fazla olan indekslerdeki değeri 255 yapıyoruz
bc(bi2)=255;

%çizdireceğimiz resim için ikinci bir kopyayı orijinal resme eşitlemiştik
%onun kırmızı yeşil mavi katmanlarını dönüşüm yaptırdığımız katmanlara
%eşitliyoruz
pic2(:,:,1)=rc;
pic2(:,:,2)=gc;
pic2(:,:,3)=bc;

image(pic2);