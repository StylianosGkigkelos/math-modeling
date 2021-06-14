function [pi] = raindrop(N)
    r = 1;
    x = 2 * rand(N,1) - 1;
    y = 2 * rand(N,1) - 1;
    
    points = x.^2 + y.^2;
    
    pointsInsideCircle = find((points < 1 & points > -1));
    
    pi = 4 * length(pointsInsideCircle) / N;
end

