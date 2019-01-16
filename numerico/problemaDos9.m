%
%
%
% Creado por Hector Beltran 16/01/19



x=2; p=1; Nila=3;
while (p<20)
    Nila = Nila + ((-1)^(p+1) * 4/(x*(x+1)*(x+2)));
    x=x+2;
    p=p+1;
    
end

Nila
abs(Nila-pi)/pi