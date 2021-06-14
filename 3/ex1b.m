function [result] = ex1b()
    qj = 1/10;
    py = 0;
    c = 0.12 / qj;
    while true
        u = rand();
        y = round(9*rand() + 1);
        if y <= 5
            py = 0.08;
        elseif y <= 10
            py = 0.12;
        end
        rej = py/(c*qj);
        
        if u < rej
            result = y;
            break;
        end
    end
    %disp(result);
end

