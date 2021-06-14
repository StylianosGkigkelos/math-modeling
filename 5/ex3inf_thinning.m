function [s] = ex3inf_thinning(lambda)
    s = [];
    t = 0;
    I = 0;
    %lambda = 7; % max of l(t)
    T = 10;
    while true
        U = rand();
        t = t - (1/lambda)*log(U);
        if t > T
            break;
        end
        U = rand();
        lambdat = (3 + 4/(t+1))/lambda - 3.37;
        if U <= lambdat
            I = I + 1;
            s = [s t];
        end
    end
end

