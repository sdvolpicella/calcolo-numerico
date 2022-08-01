f = @(x) exp(x)-1-cos(x);
x0 = 0.5;
h = 10^(-6);
tol = 10^(-10);
nitmax = 50;

[x1,nit,res] = quasiNewton_function(f,x0,h,tol,nitmax);

fprintf('%.8f',x1);