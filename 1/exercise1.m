function [] = exercise1()
    pi = 3.141592653589793;
    pi100 = zeros(10,1);
    pi1000 = zeros(10,1);
    pi10000 = zeros(10,1);
    
    for i = 1:10
        pi100(i,1) = raindrop(100); 
    end
    
    disp(pi100)
    
    for i = 1:10
        pi1000(i,1) = raindrop(1000); 
    end
    
    disp(pi1000)
    
    for i = 1:10
        pi10000(i,1) = raindrop(10000);
    end
    
    disp(pi10000)
    
    meanPi = [pi mean(pi100) mean(pi1000) mean(pi10000)]
    values = [1 100 1000 10000]
    error = pi - meanPi
    figure()
    subplot(1,2,1)
    plot(values, meanPi, 'marker', 'o')
    title('Mean value of Raindrop Experiment results')
    xlabel('N')
    ylabel('Pi')
    subplot(1,2,2);
    plot(values, error, 'marker', 'o')
    title('Error of Raindrop Experiment results')
    xlabel('N')
    ylabel('Error')
end

