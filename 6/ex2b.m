function [X] = ex2b()
    U = rand();
    if U < (1/3)
        U = rand();
        X = U;
    elseif U < (2/3)
        U = rand();
        X = U^(1/3);
    else
        U = rand();
        X = U^(1/5);
    end
end