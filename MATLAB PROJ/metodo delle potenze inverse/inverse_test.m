A = [13,2,0;2,1,3;0,3,22];
x0 = [1;1;1];
tol = 10^(-6);
nitmax = 50;

[v1,nit] = inverse_function(A,x0,tol,nitmax);
disp(v1);