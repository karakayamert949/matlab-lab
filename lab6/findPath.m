function out=findPath(x)
n=size(x,1);
m=size(x,2);
f=1;
s=1;
out=" ";
while f<n | s<m
    if s+1<=m && x(f,s+1)==1
        s=s+1;
        out=out+"R";
    elseif f+1<=n && x(f+1,s)==1
        f=f+1;
        out=out+"D";
    end
end  
end