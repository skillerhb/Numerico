function[Z]=inversa2(U)
[n,m] = size(U);
Z =eye(n);
for j=1:n
    cano=Z(:,j);
    x=tris(U,cano);
    Z(:,j)=x;
end
end
