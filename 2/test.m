% Execute a neg binomial simulation here
r = 1e2;
p = 0.2;
meanie = r/p;
tic
X = negbinomial(r, p);
y = toc;
