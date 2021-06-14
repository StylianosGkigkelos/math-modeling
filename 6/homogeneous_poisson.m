function [times] = homogeneous_poisson(lambda)
    T = 40;
    %lambda = 0.5;
    n = poissonRV(lambda*T);
    times = zeros(1,n);
    for i = 1:n
        times(i) = T * rand();
    end
    times = sort(times);
end

