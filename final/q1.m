%mert karakaya 090210362
clc
clear
close all

x=-5:0.1:5;
u=[0 0 0 -2];
sigmaSq=[0.2 1 5 0.5];
sigma=sqrt(sigmaSq);
for i=1:4
    f=exp(((-(x-u(i)).^2)./2*sigma(i).^2)) ./(sigma(i).*sqrt(2*pi));
    plot(x,f)
    hold on
end
xlabel("x");
ylabel("y");
legend("1. graph when u(1) sigma(1)","2. graph when u(2) sigma(2)", "3. graph when u(3) sigma(3)","4. graph when u(4) sigma(4)")
