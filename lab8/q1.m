clc
clear

table= [3 2 1; 4 3 1; 3 1 0];
x= [16; 21.7; 12.1];
detTable=det(table);

price=[];
for i=1:size(table,2)
    temp=table;
    temp(:,i)=x;
    price(i)=det(temp)/detTable;
end

fprintf(" water= %f \n tea= %f\n coffee= %f\n",price(1),price(2),price(3))


