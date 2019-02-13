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
% Nombre completo: Héctor J. Beltrán S.
%  Clave única: 160850
%--------------------------------------------------------------------

f= inline('sin(x)-cos(x)');
vx = linspace(0.0,2*pi)'; vy = zeros(100,1);

% Calculando raíces
[ x1 , iter1 ] = Secante( f,0,1);
[ x2 , iter2 ] = Secante( f,2,2*pi);

% Calculando puntos fijos
g = inline('cos(x) + sin(x)');
[xmax,kiter1] = biseccion(g,1,3);
[xmin,kiter2] = biseccion(g,5,6);

for i=1:100
    vy(i) = f(vx(i));
end

plot(vx,vy,vx,zeros(100,1), x1, 0, 'dr', x2, 0, 'dr',xmax, f(xmax), 'sg', xmin, f(xmin), 'sg')
title("Gráfica de f(x) = sen(x) - cos(x)")
xlabel("Eje X")
ylabel("Eje Y")
