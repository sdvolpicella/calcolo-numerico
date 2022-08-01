A = [4,2,1;2,4,2;1,2,4];
b = [7;8;7];
x0 = [1.1,1.1,1.1];
x0 = transpose(x0);
tol = 10^(-5);
nitmax = 50;

[x1,nit,res] = jacobi_function(A,b,x0,nitmax,tol);
disp(x1);