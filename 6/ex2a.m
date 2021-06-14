function [X] = ex2a()
    % rejection
    while true
        U1 = rand();
        U2 = rand();
        temp = (1 + 3*U1^2 + 5*U1^4)/9;
        if U2 <= temp
            X = U1;
            break;
        end
    end

end

