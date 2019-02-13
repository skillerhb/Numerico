function [ x ] = tris( U,b )
%Esta funci�n calcula la soluci�n del sistema lineal triangular superior
%  U*x=b
% In
% U.- matriz triangular superior no-singular de orden n 
% b.- vector columna de orden n 
% Out
% x.- vector columna de orden n con la soluci�n del sistema. 
% ITAM
% C�lculo Num�rico
% 25 de enero 2018
%   Detailed explanation goes here

n=length(b);
x= zeros(n,1);
x(n) = b(n) / U(n,n);

for i = n-1:-1:1
    x(i) = (b(i) - U(i, i+1:n)*x(i+1:n))/(U(i,i));
end

end

