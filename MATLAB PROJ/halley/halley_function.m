function [x1,nit,res] = halley_function(f,df,ddf,x0,tol,nitmax)
        nit=0;
        while(nit<nitmax)
            fx0 = f(x0);
            dfx0 = df(x0);
            ddfx0 = ddf(x0);
            x1 = x0 - ((2*fx0*dfx0)/(2*(dfx0)^(2)-(fx0*ddfx0)));
            res = f(x1);
            if(abs(x1-x0)/abs(x1)<tol)
                return
            end
            x0 = x1;
            nit = nit+1;
        end
end