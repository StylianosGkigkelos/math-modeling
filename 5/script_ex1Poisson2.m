n = 1000;
array = zeros(1000,1);

tic
for i = 1:1000
    array(i) = ex1Poisson2(5);
end
y = toc;
mean(array);
histogram(array);