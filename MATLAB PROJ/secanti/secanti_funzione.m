function [x2,nitmax] = secanti_funzione(f,x0,x1,tol,nitmax)
    nit = 0;
    while(nit<nitmax)
        fx0 = f(x0);
        fx1 = f(x1);
        x2 = x1 - ((fx1*(x1-x0))/(fx1-fx0));
        if(abs(x2-x1)/abs(x2)<tol)
            return
        end
        x0 = x1;
        x1 = x2;
        nit = nit+1;
    end
end