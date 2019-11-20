function [Rotate_Matrix] = kh620Recitation6Problem1 (M)

[x,y] = size(M);

[Rotate_Matrix] = zeros(x,y);

    for x = 1:y;
        
        for y = 1:x
            
         Rotate_Matrix(x,y) = M(y,x);
         
        end
     
        
    end
