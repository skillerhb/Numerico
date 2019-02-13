%script file: pregunta2.m 
% amen I
% Cálc
%  Exulo Numérico
% ITAM
% 13 de febrero de 2019
%
% Se aproximan las raíces, mínimo y máximo local en el intervalo [0, 2*pi]
% de la función:  f(x) = sen(x) - cos(x):
%
% raíces calculadas por secante ( código: secante.m)
% x1 = 0.7853981
% x2 = 3.926990
% puntos críticos calculados por regla falsa (código:reglafalsa.m)
% mínimo local             f(xmin)
% xmin = 5.4977871    f(xmin) = -1.41421356
% máximo local
% xmax = 2.35619449   f(max) =   1.41421356
%
% Salida
% Gráfica de la función f(x) = sen(x)-cos(x)   con x en [0,2*pi]
% en 100 puntos igualmente espaciados y los puntos marcados de las
% raíces y los puntos críticos.
% En la pantalla deben mostrarse los valores de x1, x2 (las raíces)
% y los puntos críticos con los valores de la función.
%----------------------------------------------------------------------
% Nombre completo:
%  Clave única:
%--------------------------------------------------------------------

f= inline('sin(x)-cos(x)');
% df = inline ('(sin(x + eps )-cos(x+ eps)) - (sin(x)-cos(x))) / eps');
vdy= zeros(100,1);


vx = linspace(0.0,2*pi)'; vy = zeros(100,1);

%calculando zeros

[ x1 , iter1 ] = Secante( f,0,1)
[ x2 , iter2 ] = Secante( f,2,2*pi)
%x1 imprimir estas dos para prueba 
%x2 

%calculando puntos fijos
% [y1,kiter1] = reglafalsa(f,0,pi)
% [y2,kiter2] = reglafalsa(f,3,2*pi)
% y1
% y2
% h = .1e-30;
g = inline('cos(x) + sin(x)')
[y1,kiter1] = reglafalsa(g,0,pi)
[y2,kiter2] = reglafalsa(g,5,6)
z1=f(y1)
z2= f(y2)


for i=1:100
    vy(i) = f(vx(i));
%     vdy(i) = df(vx(i));
end

plot(vx,vy,vx,zeros(100,1), x1, 0, 'sr', x2, 0, 'sr',y1, z1, 'sr', y2, z2, 'sr')
