function [I1] = simpson_function(f,a,b,n)
    tol = 10^(-3);
    h0 = (b-a)/n;
    
    prima_somm_0 = 0;
    for j=1:n(2-1)
        prima_somm_0 = f(a+(2*j)*h0) + prima_somm_0;
    end

    seconda_somm_0 = 0;
    for j=1:n/2
        seconda_somm_0 = f(a+((j*2)-1)*h0) + seconda_somm_0;
    end

    I0 = (h0/3)*((f(a)+(2*prima_somm_0)+(4*seconda_somm_0)+f(b)));

    err = tol+1;

    while(err>tol)
        n = n*2;
        h1 = (b-a)/n;

        prima_somm_1 = 0;
        for j=1:(n/2)-1
            prima_somm_1 = f(a+(2*j)*h1) + prima_somm_1;
        end
    
        seconda_somm_1 = 0;
        for j=1:n/2
            seconda_somm_1 = f(a+(j*2-1)*h1) + seconda_somm_1;
        end
    
        I1 = (h1/3)*((f(a)+(2*prima_somm_1)+(4*seconda_somm_1)+f(b)));

        err = abs(I0-I1);
        I0 = I1;
    end
    
end

    
    
