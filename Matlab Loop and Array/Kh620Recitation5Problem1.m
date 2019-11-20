function[FibArray] = Kh620Recitation5Problem1(n)

FibArray(1) = 0;
FibArray(2) = 1;

for x = 3;n
    
    FibArray(x) = FibArray(x-1) + FibArray(x-2);
    
end