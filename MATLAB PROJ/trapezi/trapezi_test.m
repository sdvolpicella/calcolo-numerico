f = @(x) sin(pi*x);
n = 4;
a = 0;
b = 1;

[I] = trapezi_function(f,a,b,n);

disp(I);

