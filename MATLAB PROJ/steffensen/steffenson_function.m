function [x1,nit,res] = steffenson_function(f,x0,tol,nitmax)
    nit = 0;
    while(nit<nitmax)
        fx0 = f(x0);
        x1 = x0-((fx0^2)/(f(x0+fx0)-fx0));
        res = f(x1);
        if(abs(x1-x0)/abs(x1)<tol)
            return
        end
        x0 = x1;
        nit = nit+1;
    end
end
