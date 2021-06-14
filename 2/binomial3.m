function [X,pr] = binomial3(n, p)
    U = rand();
    c = p./(1-p);
    i = 0;
    pr = (1-p).^n;
    F = pr;
    while U >= F
        pr = (c .* (n - 1)./ (i + 1)) .* pr;
        F = F + pr;
        i = i + 1;
    end
    X = i;
end

