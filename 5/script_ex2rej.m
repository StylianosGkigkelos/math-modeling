n = 100;
array = zeros(n,1);
tic;
for i = 1:n
    array(i) = ex2rej();
end
y = toc;
avg = mean(array);
histogram(array);