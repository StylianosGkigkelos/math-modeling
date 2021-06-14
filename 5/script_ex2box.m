n = 1000;
array = zeros(n,1);
tic;
for i = 1:2:n
    [array(i), array(i+1)] = ex2box();
end
y = toc;
avg = mean(array);
histogram(array);