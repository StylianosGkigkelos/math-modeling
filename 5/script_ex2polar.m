n = 1000;
array = zeros(1000,1);
for i = 1:2:1000
    [array(i), array(i+1)] = ex2polar();
end
avg = mean(array);
disp(n)
histogram(array);