function y=cosTay(x)
sum=0;
E=1;
i=0;

while E > 0.000001 
   a=(((-1)^i)/factorial(2*i)) *x^(2*i);
   sum=sum+a;
   i=i+1;
   E=abs(a/sum);
end
y=sum;
end
