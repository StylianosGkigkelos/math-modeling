function [result] = ex2c()
  
    %p1 probability is 0.11 * 5 = 0.55
    %p2 probability is 0.09 * 5 = 0.45
    u = rand();
    
    if u < 0.55
        u2 = round(4*rand() + 1);
        x = [5, 7, 9, 11, 13];
        result = x(u2);
    else
        u2 = round(4*rand() + 1);
        x = [6, 8, 10, 12, 14];
        result = x(u2);
    end
end

