function[A] = Kh620Recitation5Problem3(n)
 A= zeros(1,n);
 evenRodd = mod(n,2);
 
 if evenRodd == 1 
     A(1) = 1;
     
     for c=2:n 
         A(c) = abs(A(c-1)-1);
         
     end
     
 elseif evenRodd == 0
     
     A(1) = 0;
     
     for c=2:n;
         
         A(c) = abs(A(c-1)-1);
         
     end
     
 end
   
end
