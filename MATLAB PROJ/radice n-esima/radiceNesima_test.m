S = 286797;
n = 5;
tol = 10^(-10);
nitmax = 50;

[x1,nit] = radiceNesima_function(S,n,tol,nitmax);
fprintf('%.10f',x1);