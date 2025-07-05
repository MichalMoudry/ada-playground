procedure Swap (A, B : in out Integer) is
   Temp : Integer;
begin
   Temp := A;
   A := B;
   B := Temp;
end Swap;