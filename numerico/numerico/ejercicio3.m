% Hello profe, hecho por hector Beltran


g = inline('(1+2*(x^3))/(1+3*(x^2))');

x0 = 0.5;
[x,iter] = puntofijo(g,x0)

y= zeros(100,1);
a=0.0;
b=1.0;
vx = linspace(0,1);

for i = 1:100
   y(i) = g(vx(i)); 
end

plot(vx,y,vx,vx)