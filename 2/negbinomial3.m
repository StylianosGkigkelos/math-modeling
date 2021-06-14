function [X] = negbinomial3(r, p)
    
    U = rand();
    i = r;
    pr = p.^r;
    F = pr;
    while U >= F
        pr = (i .* (1 - p)) / (i + 1 - r) * pr;
        F = F + pr;
        i = i + 1;
        
    end
    X = i;
end