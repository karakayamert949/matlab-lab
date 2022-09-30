clc;
clear;

load("city_coordinate.mat");

city=input("Enter city name: ",'s');
metric=input("Enter metric type: ",'s');

a=distFunc(city_coordinate,city,metric);
disp(a)
