clc 
clear
%eksik
%randsample
board=zeros(8);
A=input("where is the horse AxB: A value= ");
B=input("where is the horse AxB: B value= ");
N=input("number of movements");
board(A,B)=1;
i=1;
while A+2<8 & A-2>1 & B+2<8 & B-2>1 & N>1
for i:N
    r=randi(8);
switch r
    case 1
        board(A+2,B+1)=i;    
    case 2
        board(A+2,B-1)=i;  
    case 3
        board(A-2,B+1)=i;  
    case 4
        board(A-2,B-1)=i;  
    case 5
        board(A+1,B+2)=i;   
    case 6
        board(A+1,B-2)=i; 
    case 7
        board(A-1,B+2)=i;
    case 8
        board(A-1,B-2)=i; 
end