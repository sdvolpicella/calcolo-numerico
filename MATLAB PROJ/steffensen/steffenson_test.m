f = @(x) sin(x)-x^3;
x0 = 1;
tol = 10^(-10);
nitmax = 50;

[x1,nit,res] = steffenson_function(f,x0,tol,nitmax);

fprintf('%.12f',x1);