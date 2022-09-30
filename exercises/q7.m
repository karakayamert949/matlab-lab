clc
clear
%yanlış
A=[1 -1/3 -1/3 0;-1/2 1 0 -1/2;-1/2 0 1 -1/2;0 -1/3 -1/3 1];
A2=A;
A4=A;
A5=A;
A3=A;
b=[50;0;0;20/3];
A(:,1)=b;
T1=det(A)/det(A2)
A2(:,2)=b;
T2=det(A2)/det(A3)
A3(:,3)=b;
T3=det(A3)/det(A4)
A4(:,4)=b;
T4=det(A4)/det(A5)