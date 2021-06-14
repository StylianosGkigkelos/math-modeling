n = 1000;
val = zeros(n,1);
tic;
for i = 1:n
    val(i) = ex1(7);
end
y = toc;
mean(val);
figure(1);
histogram(val);
