function [x1,nit,res] = jacobi_function(A,b,x0,nitmax,tol)
    D = tril(A) - tril(A,-1);
    R = A - D;
    nit = 0;
    while(nit<nitmax)
        x1 = D\(b-R*(x0));
        normx1 = norm(x1,"inf");
        normx0 = norm(x0,"inf");
        res = norm((A*x1)-b,"inf");
        if(abs(normx1-normx0)/abs(normx1)<tol)
            return
        end
        x0 = x1;
        nit = nit+1;
    end
end


        