function [result] = ex3thinning(lambda)
    s = 0;
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
        lambdat = (3 + 4/(t+1))/lambda;
        if U <= lambdat
            I = I + 1;
            s = [s t];
        end
    end
    result = s(2:I+1);
end

