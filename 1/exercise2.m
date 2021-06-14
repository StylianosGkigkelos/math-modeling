function [] = exercise2()
    n = 102;
    x0 = 79;
    a = 265;
    c = 73;
    
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
    
    
    figure()
    histogram(u, 25, 'BinLimits', [0 1])
    title('Random Number Generator (p = 48)')
    xlabel('Generated Numbers')
    
    % Rules for full cycle meaning we want p = n
    % c, n relatively prime
    % a - 1 not divisable by n
    % If n is divisible by 4 (it's not) make a-1 also divisible.
    % Thus, we can keep c as it is since c and n are co prime
    % (102 + 1) - 1 is divisible by n
    
    a2 = 102 + 1;
    c2 = 73;
    x2 = zeros(200,1);
    x2(1,1) = x0;
    for i = 2:200
        x2(i,1) =  mod(a2 * x2(i-1,1) + c2,n);
    end 
    u2 = x2 ./ n; % Period = 102
    %disp(u2)
    period2 = find(u2(2:200,1) == u2(1,1));
    mean2 = mean(u2);
    stdu2 = std(u2);
    
    fprintf('Period2: %d\nMean: %f\nStandard Deviation: %f\n', period2,mean2,stdu2)
    
    figure()
    histogram(u2, 25, 'BinLimits', [0 1])
    title('Random Number Generator (p = 102)')
    xlabel('Generated Numbers')
    ylabel('Repetitions')
    
end

