function [v1,nit] = potenze_function(A,x0,tol,nitmax)
    y0 = x0/norm(x0,2);
    %x0 = A*y0;
    v0 = transpose(y0)*x0;
    nit = 0;
    while(nit<nitmax)
        y1 = x0/norm(x0,2);
        x1 = A*y1;
        v1 = transpose(y1)*x1;
        if(abs(v1-v0)<tol*(v1))
            return
        end
        x0 = x1;
        v0 = v1;
        nit = nit + 1;
    end


end