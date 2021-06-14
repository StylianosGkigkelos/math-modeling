n = 1000;
val = zeros(n,1);
tic;
for i = 1:2:n
    [val(i), val(i+1)] = ex1a();
end

y = toc;
mean(val);
figure(1);
histogram(val);
