function [random_variables] = ex1gamma()
    %n = 1;
    % l = 1
    n = 4;
    random_variables = zeros(n,1);
    u = zeros(n,1);
    k = zeros(n+1,1);
    for i = 1:n
        u(i) = rand();
    end
    t = -log(prod(u));
    
    for i = 2: n
        k(i) = rand();
    end
    k(n+1) = 1;
    k = sort(k);
    
    for i = 2:5 
        random_variables(i-1) = t*(k(i)- k(i-1)) ;
    end
end

