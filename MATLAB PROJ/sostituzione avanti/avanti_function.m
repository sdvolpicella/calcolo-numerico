function [x] = avanti_function(A,b)
    x(1,1) = b(1)/A(1,1);
    n = size(A);
    n = n(1);
    for i=2:n
        sum = 0;
        for j=1:i-1
            sum = A(i,j)*x(j,1) + sum;
        end
        x(i,1) = 1/(A(i,i))*(b(i)-sum);
    end

end