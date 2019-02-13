function [ x ] = trin( L,b )
%M�todo de sustituci�n hacia adelante para resolver el sistema lineal
%  L*x=b
% donde L es triangular inferior de orden n
% In
% L.- matriz triangular inferior de orden n invertible
% b.- vector columna de orden n que es el lado derecho del sistema
% Out
% x.- vector columna de orden n con la soluci�n del sistema. 
% ITAM
% C�lculo Num�rico
% 25 de enero 2018

n=length(b); % dimensi�n del problema
x=zeros(n,1); % inicio la variable de salida
x(1)=b(1)/L(1,1); % primera coordenada de la soluci�n

for i=2:n
    x(i)= (b(i)-L(i,1:i-1)*x(1:i-1))/L(i,i);
end

end

