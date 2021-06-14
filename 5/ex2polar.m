function [X, Y] = ex2polar()
    while true
        U1 = rand();
        U2 = rand();
        V1 = 2*U1 - 1;
        V2 = 2*U2 - 1;
        S = V1^2 + V2^2;
        if S <= 1
            X = sqrt((-2*log(S)/S))*V1;
            Y = sqrt((-2*log(S)/S))*V2;
            break;
        end
    end


end

