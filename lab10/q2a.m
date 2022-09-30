clc
clear
close all

syms x f h

%f(x)
f=sin(cos(x));

%f(x+h)
fh=sin(cos(x+h));

%derivative of f by limit method
df=(fh-f)/h;
Ldf=limit(df,h,0);

%derivative of f by diff command
sol=diff(f);

if sol==Ldf
    fprintf("They are equal")
else
    fprintf("they are not equal")
end