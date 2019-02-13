function [fx] = anualidad(x)
%Ecuación de anualidad ordinaria para obtener una tasa de interés
%
%
%por: Héctor Beltrán
    A = 135000; n = 360; P = 1000;
    fx = A - (P/x)*(1- (1+x)^-n); 
end