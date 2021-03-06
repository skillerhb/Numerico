function [x,kiter] = reglafalsa(fname,a,b)

%Metodo de Regla Falsa para fname:[a,b] ---> R
%fname es una funcion continua en [a,b] tal que 
%fname(A)*fname(b) < 0 y fname tien una unica raiz en [a,b]
%----------
% In
%fname. cadena con el nombre de la funcion en matlab
% a: numero real
% b: numero real
% se tiene que a<b 
%
%Out
% x: numero real tal que  abs(fname(x)) <= tol
%kiter: contador con el numero de iteraciones que se usaron 
% ----------

tol=1.e-12;
maxiter=50;
kiter=0;
fa=feval(fname,a);
fb=feval(fname,b);

while(fa*fb<0 && (b-a)>tol && kiter<maxiter)
    kiter=kiter+1;
    m=(fb-fa)/(b-a);
    c=a-(fa/m); fc=feval(fname,c);
    if(abs(fc<tol))
        a=c; fa=fc;
        b=c; fb=fc;
    else
        if( fa*fc<0)
            b=c; fb=fc;
        else
            a=c; fa=fc;
        end
    end
end
x = c;



end

