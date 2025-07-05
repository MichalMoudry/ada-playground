function Quadruple (I : Integer) return Integer is
   function Double (I : Integer) return Integer is
   begin
      return I * 2;
   end Double;

   Res : Integer;
begin
   Res := Double (Double (I));
   return Res;
end Quadruple;