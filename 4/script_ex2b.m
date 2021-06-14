n = 5e5;
val = zeros(n,1);
for i = 1:n
    val(i) = ex2b();
end
mean(val);
figure(1);
histogram(val);
