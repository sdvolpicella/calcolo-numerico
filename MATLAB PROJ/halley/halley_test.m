f = @(x) sin(x)-x^3;
syms x;
df = diff(f,x);
ddf = diff(df,x);
df = @(x) cos(x)-3*x^2;
ddf = @(x) -6*x-sin(x);


x0 = 1;
tol = 10^(-10);
nitmax = 50;

[x1,nit,res] = halley_function(f,df,ddf,x0,tol,nitmax);