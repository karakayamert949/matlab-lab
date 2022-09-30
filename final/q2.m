%mert karakaya 090210362
clc
clear
close all

syms a b c x y z xi

A=[a -4 2; b 1 2; c 2 5];

x=diag([-5 -5 -5]);
y=diag([3 3 3]);
z=diag([6 6 6]);

[a b c]=solve((det(A-x)==0),(det(A-y)==0),(det(A-z)==0));
a=double(a);
b=double(b);
c=double(c);
fprintf("a is %i b is %i c is %i\n",a,b,c)

fun=(1+sin(xi)^2) /exp(xi);
i1=int(fun,xi,a,c);

fprintf("integral's solution is %f\n",i1);

l1=limit(abs(xi)/abs(xi-a),xi,b,"Right");
fprintf("limit's solution is %f",l1)

