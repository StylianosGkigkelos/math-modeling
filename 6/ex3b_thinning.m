function [s] = ex3b_thinning()
    s = [];
    t = 0;
    I = 0;
    lambda = 40/41; % max of l(t)
    T = 40;
    while true
        U = rand();
        t = t - (1/lambda)*log(U);
        if t > T
            break;
        end
        U = rand();
        lambdat = (1/(t+1))/lambda - 1/41;
        if U <= lambdat
            I = I + 1;
            s = [s t];
        end
    end
end