function [X, Y] = ex2box()
    U1 = rand();
    U2 = rand();
    R = sqrt(-2*log(U1));
    theta = 2*pi*U2;
    X = R * cos(theta);
    Y = R * sin(theta);
end

