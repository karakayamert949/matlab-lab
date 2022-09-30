clc;
clear;

x=-pi:0.1:pi;

app1=0;
app2=0;
app3=0;

for i=1:1
    a=(2/pi)*((-1)^(i+1))*(sin(i*x)/i);
    app1=app1+a;
end

for i=1:5
    a=(2/pi)*((-1)^(i+1))*(sin(i*x)/i);
    app2=app2+a;
end

for i=1:10
    a=(2/pi)*((-1)^(i+1))*(sin(i*x)/i);
    app3=app3+a;
end

plot(x,x./pi)
hold on
plot(x,app1)
hold on
plot(x,app2)
hold on
plot(x,app3)
hold off

legend("s(x)","N=1","N=5","N=10")

e1=SSE_val(x/pi,app1);
e2=SSE_val(x/pi,app2);
e3=SSE_val(x/pi,app3);

disp(e1)
disp(e2)
disp(e3)

