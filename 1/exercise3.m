function [] = exercise3()
    n = 100;
    x0 = 23;
    
    a = 100 + 1;
    c = 3;
    
    x = zeros(200,1);
    x(1,1) = x0;
    for i = 2:200
        x(i,1) =  mod(a * x(i-1,1) + c,n);
    end 
    u = x ./ n; 
    period1 = find(u(2:200,1) == u(1,1));
    mean1 = mean(u);
    stdu = std(u);
    fprintf('Period: %d\nMean: %f\nStandard Deviation: %f\n\n', period1(1),mean1,stdu)
    
    x2 = zeros(200,1);
    x2(1,1) = 23;
    x2(2,1) = 66;
    for i = 3:200
        x2(i,1) = mod(3 * x2(i-1,1) + 5 * x2(i-2,1),n);
    end 
    u2 = x2 ./ n; 
    period2 = find(u2(3:200,1) == u2(1,1));
    mean2 = mean(u2);
    stdu2 = std(u2);
    fprintf('Period: %d\nMean: %f\nStandard Deviation: %f\n\n', period2(1),mean2,stdu2)
    
    
    u3 = rand(1,200);
    mean3 = mean(u3);
    stdu3 = std(u3);
    fprintf('Mean: %f\nStandard Deviation: %f\n\n', mean3,stdu3)
    
    
    figure()
    subplot(3,1,1);
    histogram(u, 25, 'BinLimits', [0 1])
    title('Random Number Generator 1')
    xlabel('Generated Numbers')
    subplot(3,1,2);
    histogram(u2, 25, 'BinLimits', [0 1])
    title('Random Number Generator 2')
    xlabel('Generated Numbers')
    subplot(3,1,3);
    histogram(u3, 25, 'BinLimits', [0 1])
    title('Matlab''s Random Number Generator ')
    xlabel('Generated Numbers')
end

