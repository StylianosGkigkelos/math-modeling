function [X] = ex3()

    lambda = 1;
    a = 3;
    l = a / lambda;
    c = 1.83;    
    
    while true
        U = rand();
        Y = -l * log(U);
        %Y = -0.9*log(U);
        temp = (3 * Y^2)/(c*2*exp((2*Y)/3));
        U2 = rand();
        if U2 <= temp
            break;
        end
    end
    X = Y;
end

