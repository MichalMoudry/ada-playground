with Ada.Integer_Text_IO;
with Ada.Text_IO; use Ada.Text_IO;
with Quadruple;
with Swap;

procedure Subprograms is
   X : Integer;
   A, B, C : Integer;

   function Increment (I : Integer := 0; Incr : Integer := 1) return Integer is
   begin
      return I + Incr;
   end Increment;

   procedure Display_Result is
   begin
      Put_Line ("Increment of "
         & Integer'Image (A)
         & " with "
         & Integer'Image (B)
         & " is "
         & Integer'Image (C)
      );
   end Display_Result;

   procedure Foo (A : out Integer) is
   begin
      A := 10;
   end Foo;

   Test1 : Integer;
begin
   X := 1;
   X := Increment (I => X, Incr => 2);
   X := Increment (X);
   Ada.Integer_Text_IO.Put (X);
   Put_Line ("");

   C := Increment;
   Put_Line ("Default increment is: " & Integer'Image (C));
   A := 10;
   B := 3;
   C := Increment (A, B);
   Display_Result;

   Swap (A, B);
   Display_Result;

   Put_Line ("Quadruple of 16 is: " & Integer'Image (Quadruple (16)));

   Foo (Test1);
   Put_Line ("Test1 =" & Integer'Image (Test1));
end Subprograms;
