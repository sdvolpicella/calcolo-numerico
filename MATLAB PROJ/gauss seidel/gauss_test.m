A = [2.4,-0.8,-0.7;0.5,1.5,0.7;-0.1,0.8,2.1];
disp(A);
b = [0.9,2.7,2.8];
b=transpose(b);
x0 = [0.9,0.9,0.9];
x0 = transpose(x0);
disp(b);
disp(x0);
nitmax = 50;
tol = 10^(-5);

[x1,nit,res] = gauss_function(A,b,x0,nitmax,tol);

disp(x1);