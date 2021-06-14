function [reimbursement] = ex4()
    n = 1000;
    j = 0;
    reimbursement = 0;
    for i = 1:n
        U = rand();
        if U <= 0.05
            j = j +1;
            U2 = rand();
            reimbursement = reimbursement -800*log(U2);
        end
    end
    %disp(j);
end

