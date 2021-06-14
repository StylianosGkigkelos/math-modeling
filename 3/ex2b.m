function [result] = ex2b()
    qj = 1/10;
    py = 0;
    c = 0.11 / qj;
    while true
        u = rand();
        y = round(9*rand() + 5);
        if mod(y,2) == 0
            py = 0.09;
        elseif mod(y,2) == 1
            py = 0.11;
        end
        rej = py/(c*qj);
        
        if u < rej
            result = y;
            break;
        end
    end
    % disp(result);
end

