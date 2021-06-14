function [] = exercise4()
    a = 0;
    b = 1;
    u = rand(1,100000);
    
    integral1 = ((b-a).*(1 -  (a + ((b-a) .* u)) .^ 2).^(3/2));
    mean(integral1)
    
    a = -2;
    b = 2;
    
    integral2 = (b-a).* exp(1).^( (a + ((b-a) .* u)) .^ 2 + (b-a) .* u);
    mean(integral2)
    
    y = 1 ./ (u + 1);
    y2 = (1 ./ y) - 1;
    
    integral3 = (y2 .* (1 + y2 .^ 2).^-2) ./ (y2.^2);
    mean(integral3)
    %x (1 + x^2)^-2;
end

