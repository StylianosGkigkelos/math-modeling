function [rv] = binomial1(n, p)
    X = zeros(n,1);
    for i = 1:n
        U = rand();
        if U <= p 
            X(i) = 1;
        else
            X(i) = 0;
        end
    end
    
    rv = sum(X);
end