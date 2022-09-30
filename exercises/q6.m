clc
clear
close all
%soruyu anlamadım
%hocaya sor
I=zeros(159,318,3);
E=imread("EncryptedImage.png");
for k=1:3
    for i=1:159
        for j=1:318
            if mod(i+j,2)==0
                I(i,j,k)=mod((E(i,j,k)-127)/4,100) ;
            else
                I(i,j,k)=mod((E(i,j,k)-255)/4,200) ;
            end
        end
    end
end
imshow(I);

