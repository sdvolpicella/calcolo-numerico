f = @(x) tan(x);
a = 0;
b = pi/4;
n = 4;

[I1] = simpson_function(f,a,b,n);
disp(I1);