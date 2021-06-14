function [result] = ex1a()
    u = rand();
    sum = 0;
    for j = 1:10
        if j <= 5
            sum = sum + 0.08;
        elseif j <= 10
            sum = sum + 0.12;
        end
        if u < sum
            result = j;
            break;
        end
    end
    %disp(result);
end

