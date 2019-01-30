function [x, iter] = puntofijo(g,x0)
x=x0; iter = 1;

while (iter<50 && abs(g(x)-x)> (1.e-12) )
   print("iteraciones")
   x=g(x);
   iter = 1+ iter;
end