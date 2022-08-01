function [x1,nit,res] = gauss_function(A,b,x0,nitmax,tol)
    nit = 0;
    L = tril(A);
    U = A - L;
    while(nit<nitmax)
        x1 = L\(b-(U*x0));
        normx1 = norm(x1,2);
        normx0 = norm(x0,2);
        res = norm((A*x1)-b,2);
        if(abs(normx1-normx0)/abs(normx1)<tol)
            return
        end
        x0 = x1;
        nit = nit+1;
    end
end