function [x] = indietro_function(A,b)
    n = size(A);
    n = n(1);
    x(n,1) = b(n)/A(n,n);
    i = n - 1;
    while(i>0 && i<n)
        sum = 0;
        for j=i+1:n
            sum = sum + A(i,j)*x(j,1);
        end
        x(i,1) = (1/A(i,i)) * ((b(i) - sum));
        i = i-1;
    end
end
