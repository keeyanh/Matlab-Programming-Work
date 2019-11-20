function[v1,v2,v3,v4] = kh620Recitation9Problem4(V,R1,R2,R3,R4)

A = [ (R1+R4) - R1 (R1+R4) - R2; O - R2 (R2+R3)];
b = [V;O;O];
X = inv(A)*b;

X1 = X(1:1);
X2 = X(2:2);
X2 = X(3:3);

v1 = (X1 - X2) * R1 ;
v2 = (X2 - X3) * R2 ;
v3 = (X2 - R3);
v4 = (X1 * R4);

end 