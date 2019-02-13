%script file: pregunta2.m 
% amen I
% C�lc
%  Exulo Num�rico
% ITAM
% 13 de febrero de 2019
%
% Se aproximan las ra�ces, m�nimo y m�ximo local en el intervalo [0, 2*pi]
% de la funci�n:  f(x) = sen(x) - cos(x):
%
% ra�ces calculadas por secante ( c�digo: secante.m)
% x1 = 0.7853981
% x2 = 3.926990
% puntos cr�ticos calculados por regla falsa (c�digo:reglafalsa.m)
% m�nimo local             f(xmin)
% xmin = 5.4977871    f(xmin) = -1.41421356
% m�ximo local
% xmax = 2.35619449   f(max) =   1.41421356
%
% Salida
% Gr�fica de la funci�n f(x) = sen(x)-cos(x)   con x en [0,2*pi]
% en 100 puntos igualmente espaciados y los puntos marcados de las
% ra�ces y los puntos cr�ticos.
% En la pantalla deben mostrarse los valores de x1, x2 (las ra�ces)
% y los puntos cr�ticos con los valores de la funci�n.
%----------------------------------------------------------------------
% Nombre completo: H�ctor J. Beltr�n S.
%  Clave �nica: 160850
%--------------------------------------------------------------------

f= inline('sin(x)-cos(x)');
vx = linspace(0.0,2*pi)'; vy = zeros(100,1);

% Calculando ra�ces
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
title("Gr�fica de f(x) = sen(x) - cos(x)")
xlabel("Eje X")
ylabel("Eje Y")
