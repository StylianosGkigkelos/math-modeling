n = 1e7;
val = zeros(n,1);
tic;
for i = 1:n
    val(i) = ex2a();
end

y = toc;
mean(val);
figure(1);
histogram(val);
