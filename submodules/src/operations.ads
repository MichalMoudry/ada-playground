package Operations is

   --  Increments an integer value by another value (default of 1).
   --  @param I A value that should be incremented
   --  @param Incr A value by which the base value should be incremented by.
   function Increment_By (I : Integer; Incr : Integer := 1) return Integer;

   function Get_Increment_Value return Integer;

end Operations;