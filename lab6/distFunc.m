function dist=distFunc(x,name,metric)

nx(:,2:4)=double(x(:,2:4));

i=0;

index=1;
while name~=x(index,1)
    index=index+1;
end

tempDist2=[];

m=size(x,1);
while i<m
    i=i+1;
    switch metric
        case "Manhattan"
            tempDist(i)=sum(abs(nx(index,2:4)-nx(i,2:4)));  
        case "Euclidean"
            tempDist(i)=sqrt(sum((nx(index,2:4)-nx(i,2:4)).^2));
        otherwise
            disp("error");
    end
end
tempDist2=sort(tempDist);
dist=tempDist2(1);
end