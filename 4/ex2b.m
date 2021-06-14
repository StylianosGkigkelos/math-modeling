function [X] = ex2b()
    c=4;
    while true
        Y = 9*rand() - 3;
        U = rand();
        temp = ((Y^2)/81)/(c*(1/9));
        if U <= temp
            break;
        end
    end
    X = (Y);
end

