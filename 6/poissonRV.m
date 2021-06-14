function [X] = poissonRV(lambda)
    N = 0;
    val = exp(-lambda);
    n = 1;
    while true
        U = rand();
        n = n * U;
        N = N + 1;
        if n < val
            X = N - 1;
            break;
        end
    end


end

