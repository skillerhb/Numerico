%
%
%
% problema 1 del lab  30 enero 2019 por Hector Beltran


g = inline('(x + (2/x))/2');

vx = linspace(1.0,2.0)'; vy = zeros(100,1);

for i=1:100
    vy(i) = g(vx(i));
end
plot(vx,vy,vx,vx)