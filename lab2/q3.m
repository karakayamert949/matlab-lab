clc;
clear;

a=input("what is the minimum value of the matrix elements? ");
b=input("what is the maximum value of the matrix elements? ");

A=a+(b-a)*rand(7,5);
B=a+(b-a)*rand(7,7);
C=a+(b-a)*rand(4,7);

S=(1/2)*(B+B');
display(S)

A(:,2)=B(3,:); %b) seçeneği

sumDiagonal=sum(B(1:8:end));
display(sumDiagonal)

ColVec=zeros(6,1);
ColVec(1:3,1)=A(2,2:4);
ColVec(4:6,1)=B(1:2:5,3);
display(ColVec)

v1=C(2,:);
v2=B(5,:);

val=sum(v1.*v2);
normV1=(sqrt(sum(v1.^2)));
normV2=(sqrt(sum(v2.^2)));
rad=acos(val/(normV2*normV1));
degree=rad*180/pi;

display(degree)

unitV1=v1./normV1;
unitV2=v2./normV2;

display(unitV1)
display(unitV2)

A(:,end)=[];
P=A;
display(P)

M=P*C;
D=B./M;
display(D)

