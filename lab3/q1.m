clc;
clear;

interval=[1790:10:2000];

population=197273000./(1+(exp(-0.03134*(interval-1913.25))));

plot(interval,population);

title("population of U.S.")
xlabel("time (years)")
ylabel("population")