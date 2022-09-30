clc;
clear;

v=randi([-100,100],[1 15]);
sum=0;

v=v(v>0)

if isempty(v)
    ha=0;
end

for i=1:length(v)
    sum=sum+ 1/v(i);
end

ha=length(v)/sum;

display(ha);