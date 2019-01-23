%gráfica de la anualidad.m

a = 0.003; b = 0.009;
vx = linspace(a, b, 75)'; y = zeros(75,1);

for i=1:75
    y(i) = anualidad(vx(i));
end

plot(vx, y)
%plot(vx, y, '--r', 'Linewidth', 3)
%plot(vx, y, 'xr', 'Linewidth', 3)
%plot(vx, y, 'or', 'Linewidth', 3)
title('Gráfica de la función de anualidad ordinaria', 'Fontsize', 16)
xlabel('Eje x', 'Fontsize', 18)
ylabel('Eje y', 'Fontsize', 20)
