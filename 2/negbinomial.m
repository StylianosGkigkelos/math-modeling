function [X] = negbinomial(r, p)
    X = 0;
    failures_counter = 0;
    while true
        U = rand();
        % If we fail
        if U < p
            failures_counter = failures_counter + 1;
        end
        X = X + 1;
        if failures_counter > r
            break;
        end
    end
    
end