function[Z] = inversa(L)
[n,m] = size(L);
Z = eye(n);
for j=1:n
    cano=Z(:,j);
    x=trin(L,cano);
    Z(:,j)=x;
end
end