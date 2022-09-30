clc;
clear;

v=[200 500 700 1000 1500];


for i=1:length(v)
    if v(i)<=500
        c(i)=v(i)*2;
    elseif 500<v(i) & v(i)<=1000
        c(i)=10*100+(v(i)-500)*5;
    else
        c(i)=35*100+(v(i)-1000)*10;
    end
end
a=c/100 + 5;

display(a);

