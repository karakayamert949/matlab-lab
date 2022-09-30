clc
clear

points=[-2.6 68; 0.5 5.7; 1.5 4.9; 3.5 88];

X=[points(:,1).^3  points(:,1).^2  points(:,1).^1  points(:,1).^0];

augmented=[X  eye(4)];
rrefAugmented=rref(augmented);
inverse=rrefAugmented(:,5:end);
solution=inverse*points(:,2);

fprintf(" a= %f\n b= %f\n c= %f\n d= %f",solution(1),solution(2),solution(3),solution(4))