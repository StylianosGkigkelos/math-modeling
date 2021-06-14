function [X] = ex1neumann()
    U1 = rand();
    temp = U1;
    N = 0;
    failures = 0;
    while true
        U2 = rand();
        if U1 >= U2
            N = N + 1;
            U1 = U2;
        elseif mod(N,2) == 0
                break;
        else
            N = 0;
            failures = failures + 1;
            U1 = rand();
            temp = U1;
        end                    
    end
    X = failures + temp;
end

