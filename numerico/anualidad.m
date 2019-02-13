function [fx] = anualidad(x)
%Ecuaci�n de anualidad ordinaria para obtener una tasa de inter�s
%
%
%por: H�ctor Beltr�n
    A = 135000; n = 360; P = 1000;
    fx = A - (P/x)*(1- (1+x)^-n); 
end