n = 1e7;
val = zeros(n,1);
tic;
for i = 1:4:n
    temp = ex1gamma();
    for j = 0:3
        val(i+j) = temp(j+1);
    end
end
y = toc;
mean(val);
figure(1);
histogram(val);
