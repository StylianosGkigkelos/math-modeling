function [X] = ex2a()
    %   Simulate x^2/81 with inverse transformation
    %   To calculate the mean we integrate from -3 to 6 = x^3/81 - mean = 3.75

    U = rand();
    X = 3*(nthroot(9*U-1,3));
end

