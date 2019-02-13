% se calcula el exponente positivo mas grande, r, tal que 1+(1/2^r) > 1

x=1; r=0; y=1; z=x+y;

while (x~=z)
   y=y/2;
   r=r+1;
   z=x+y;
end
r
% r=52