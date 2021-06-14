n = 1e5;
val = zeros(n,1);
tic;
for i = 1:n
    [~, val(i)] = size(ex3a());
end

y = toc;
mean(val);
figure(1);
histogram(val);
