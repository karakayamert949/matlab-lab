clc;
clear;

labyrent1=[1 1 0 0 0;0 1 1 1 1;0 0 0 0 1;0 0 0 0 1];
labyrent2=[1 0 0 0 0;1 0 0 0 0;1 0 0 0 0;1 1 1 1 1];

p1=findPath(labyrent1);
p2=findPath(labyrent2);

disp(p1)
disp(p2)
