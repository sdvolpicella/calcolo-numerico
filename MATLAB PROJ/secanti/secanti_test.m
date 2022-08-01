x0 = 1;
x1 = 0.9;
f = @(x) sin(x)/x-x;
tol = 10^(-10);
nitmax = 50;

[x2,nitmax] = secanti_funzione(f,x0,x1,tol,nitmax);
fprintf('%.10f',x2);