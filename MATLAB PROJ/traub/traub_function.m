function [x1,nit] = traub_function(f,df,x0,nitmax,tol)
    nit = 0;
    while(nit<nitmax)
        fx0 = f(x0);
        dfx0 = df(x0);
        y = x0-(fx0/dfx0);
        x1 = y - (f(y)/df(x0));
        if(abs(x1-x0)/abs(x0)<tol)
            return
        end
        x0 = x1;
        nit = nit+1;
    end
end
