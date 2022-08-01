function [I] = trapezi_function(f,a,b,n)
    h = (b-a)/n;
    tol = 10^(-3);
    sum0 = 0;
    for j=1:n-1
        sum0 = sum0 + f(a+(j*h));
    end
    I0 = (h/2)*(f(a)+(2*sum0)+f(b));

    diff = tol+1;
    while(diff>tol)
        n = n*2;
        h1 = (b-a)/n;
        sum1 = 0;
        for j=1:n-1
            sum1 = sum1 + f(a+(j*h1));
        end
        I = (h1/2)*(f(a)+(2*sum1)+f(b));

        diff = abs(I0-I);
        I0 = I;
    end

end

    


