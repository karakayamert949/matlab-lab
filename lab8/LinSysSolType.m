function LinSysSolType(A,b)

augmented=[A b];

rankA=rank(A);
rankB=rank(b);
rankAug=rank(augmented);

if rankA < rankAug
    fprintf("No solution");
else
    if size(A,2)==rankA
        fprintf("There is unique one solution")
    else
        fprintf("Infinitey many solution")
    end
end
end


