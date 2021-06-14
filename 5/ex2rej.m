function [X] = ex2rej()
    while true
        U = rand();
        Y1 = -log(U);
        U2 = rand();
        Y2 = -log(U2);
        result = Y2 - ((Y1-1)^2/2);
        
        if result > 0
            %Y = result;
            U3 = rand();
            if U3 > 1/2
                X = -Y1;
            else
                X = Y1;
            end
            break;
        end
    end

end

