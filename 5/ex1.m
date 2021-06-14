function [X] = ex1(lambda)
%Generate poisson RM
    U = rand();
    i = 0;
    p = exp(-lambda);
    F = p;
    while true
        if U < F
            X = i;
            break;
        end
        p = lambda * p / (i+1);
        F = F + p;
        i = i + 1;
    end
end

