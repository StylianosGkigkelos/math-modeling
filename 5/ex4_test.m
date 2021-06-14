n = 1e6;
counter = 0;
for i = 1:n
    temp = ex4();
    if temp > 50000
        counter = counter + 1;
    end
end
chance = counter/n;
fprintf(['In n = ', num2str(n), ' experiments we have ', num2str(counter), ... 
    ' successful ones (reimbursements over 50000€).', '\nWe have a chance of '...
    , num2str(chance), ', with a total percent ', num2str(chance*100),'.\n']);