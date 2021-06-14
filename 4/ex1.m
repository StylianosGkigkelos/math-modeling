function [X] = ex1()
    % We want to simulate 1 - e^(-x)
    % The inverse function is -ln(x)
    % U is a random variable in (0,1)
    U = rand();
    % We can also use -log(U)
    X = -log(1-U);
end

