function [result] = ex1c()
    % 0.08 0.12
    
    %p1 probability is 0.08 * 5 = 0.40
    %p2 probability is 0.12 * 5 = 0.60
    u = rand();
    
    if u < 0.4
        u2 = round(4*rand() + 1);
        result = u2;
    else
        u2 = round(4*rand() + 6);
        result = u2;
    end
end

