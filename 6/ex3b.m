function [s] = ex3b()
    
    T = 40;
    a = 1;
    U = rand();
    temp = a*U/(1-U);
    if temp > T
        s = [];
        return;
    end
    j = 1;
    
    s = [temp];
    while true
        U = rand();
        temp = (s(j) + a*U) / (1 - U);
        if temp > T
            break;
        end
        s = [s temp];
        j = j + 1;
        
    end
end

