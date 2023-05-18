function A_total = find_A(GOS,c)

A_total = fzero(@erling_b,30);

   function A_total = erling_b(A)
    den = 0;
    for i = 0:c
      den = den + (A.^i) / (factorial(i));
       A_total  = ( (A.^c / factorial(c))/den ) - (GOS/100) ;
    end
   end
end
