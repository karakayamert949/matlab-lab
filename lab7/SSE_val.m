function err=SSE_val(s,sApp)
err=0;

for i=1:length(s)
    err=err+((s(i)-sApp(i))^2);
end
end