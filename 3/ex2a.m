function [result] = ex2a()
    u = rand();
    sum = 0;
    for j = 5:14
        if mod(j,2) == 0
            sum = sum + 0.09;
        elseif mod(j,2) == 1
            sum = sum + 0.11;
        end
        if u < sum
            result = j;
            break;
        end
    end
    %disp(result);
end

