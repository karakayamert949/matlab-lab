function y=taylor(inp,err)
f=3/(inp^2 + inp -2);
y=0;
n=0;
while abs(f-y)>err
    t=y;
    y=((((-1)^(n+1)) / (2^(n+1))) -1)*(inp^n);
    y=t+y;
    plot(n,abs(f-y),"*")
    hold on
    n=n+1;
end
y
end
