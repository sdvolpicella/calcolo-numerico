f = @(x) 1-(x^(2)/2)-x^3;
syms x;
df = diff(f,x);
disp(df);
df = @(x) -3*x^(2)-x;
tol = 10^(-10);
nitmax = 50;
x0 = 1;

[x1,nit] = traub_function(f,df,x0,nitmax,tol);
disp(x1);