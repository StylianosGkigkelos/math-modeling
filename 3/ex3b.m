function [x] = ex3b(rolls)
    r = 6;
    % A non crooked dice has the same probability for every possible result
    spaces = linspace(0,1,r+1);
    x = zeros(r,1);
    
    for j = 1:rolls
        u = rand();
        index = find(u <= spaces, 1 );
        x(index-1) = x(index-1) + 1;
    end
    
    figure(1);
    bar(x)
    title([num2str(rolls) ' rolls']);
    xlabel('Dice Side');
    ylabel('Sucesses');
end

