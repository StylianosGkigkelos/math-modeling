function [result] = ex3b()
    result = homogeneous_poisson(1/41);
    result = [result, ex3b_thinning()];
    result = sort(result);
end