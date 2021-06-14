function [x] = ex3a(rolls)
    % Number of dice's sides
    r = 6;
    % A non crooked dice has the same probability for every possible result
    p = zeros(r,1) + 1/r;
    n = rolls;
    x = zeros(r,1);
    current_p = p(1);
    i = 1;
    while i < r
        % Random number for n tries with probability pi.
        % Using matlab's internal function instead of those made on the
        % previous exercise.
        x(i) = binornd(n,current_p);
        n = n - x(i);
        
        current_p = p(i+1)/(1 - sum(p(1:i)));
        i = i + 1;
    end
    x(i) = n;
    figure(1);
    bar(x)
    title([num2str(rolls) ' rolls']);
    xlabel('Dice Side');
    ylabel('Sucesses');
end

