function [X] = negbinomial2(r, p)
    geometricN = zeros(r,1);
    for i = 1:r
        U = rand();
        % Here we simulate a geometric Random Variable
        geometricN(i) = 1 + floor(log(U)./(log(1-p)));
    end
    % We sum all of the RMs
    X = sum(geometricN);
    
end