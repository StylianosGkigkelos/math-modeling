function [s] = ex3a()
    s = [];
    t = 0;
    I = 0;
    lambda = 1; % max of l(t)
    T = 40;
    while true
        U = rand();
        t = t - (1/lambda)*log(U);
        if t > T
            break;
        end
        U = rand();
        lambdat = (1/(t+1))/lambda;
        if U <= lambdat
            I = I + 1;
            s = [s t];
        end
    end
end


