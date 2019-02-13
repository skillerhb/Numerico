function [ xs , iter ] =  Secante( fname,x1,x2 )
iter = 0;
fx1 = feval(fname, x1);
fx2 = feval(fname, x2);
x = x2 - ((x2 - x1) / (fx2 - fx1))*fx2;
error = abs(fx1);
tol= 1.e-08;
maxiter = 50;

while (error >= tol && iter < maxiter)
    x2 = x1;
    x1 = x;
    fx2 = feval(fname,x2);
    fx1 = feval(fname,x1);
    x = x2 - ((x2 - x1)/(fx2 - fx1))*fx2;
    error = abs(x2 - x1);
    iter = iter + 1;
    

end
xs=x;