n = 1e5;
val = zeros(n,1);
for i = 1:n
    val(i) = ex2a();
end
mean(val);
figure(1);
histogram(val);
