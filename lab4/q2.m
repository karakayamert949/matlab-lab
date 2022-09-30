clc;
clear;

pic=imread("photo.png");

[x y z]=size(pic);

topl=pic(1:x/2,1:y/2,:);
topr=pic(1:x/2,y/2:end,:);
bottom=pic(x/2:end,1:end,:);

meanl=mean(mean(topl));
meanr=mean(mean(topr));
meanb=mean(mean(bottom));

newpic=pic;
newpic(1:x/2,1:y/2,1)=meanl(:,:,1);
newpic(1:x/2,1:y/2,2)=meanl(:,:,2);
newpic(1:x/2,1:y/2,3)=meanl(:,:,3);

newpic(1:x/2,y/2:end,1)=meanr(:,:,1);
newpic(1:x/2,y/2:end,2)=meanr(:,:,2);
newpic(1:x/2,y/2:end,3)=meanr(:,:,3);

newpic(x/2:end,1:end,1)=meanb(:,:,1);
newpic(x/2:end,1:end,2)=meanb(:,:,2);
newpic(x/2:end,1:end,3)=meanb(:,:,3);

subplot(1,2,1); image(newpic);
subplot(1,2,2); image(pic);