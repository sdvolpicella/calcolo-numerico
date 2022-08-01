function [x1,nit] = radiceNesima_function(S,n,tol,nitmax)
    nit = 0;
    x0 = S;
    while(nit<nitmax)
        x1 = 1/n*((n-1)*x0+(S/x0^(n-1)));
        if(abs(x1-x0)/abs(x1)<tol)
            return
        end
        x0=x1;
        nit = nit+1;
    end
end