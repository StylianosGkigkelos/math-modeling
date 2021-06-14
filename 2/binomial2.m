function [rv] = binomial2(n, p)
    X = zeros(n,1);
    i =n;
    while i > 0
        % generation of a geometric random variable
        U = rand();
        j = 1 + floor(log(U)./(log(1-p)));

        if j > n
            X = zeros(n,1);
        elseif j == n
            X = zeros(n,1);
            X(n) = 1;
        else
            X(1:i-1) = 0;
            X(i)=1;
        end
    i = i - j;
    end
    rv = sum(X);
end