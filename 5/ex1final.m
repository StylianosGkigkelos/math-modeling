function [times] = ex1final(lambda)
    T = 10;
    %lambda = 0.5;
    n = ex1Poisson2(lambda*T);
    times = zeros(1,n);
    for i = 1:n
        times(i) = T * rand();
    end
    times = sort(times);
end