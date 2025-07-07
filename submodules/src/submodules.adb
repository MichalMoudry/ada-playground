with Ada.Text_IO; use Ada.Text_IO;
with Week;
with Operations;
with Week.Operations;

procedure Submodules is
   use Operations;

   I : Integer := 0;
   R : Integer;

   procedure Display_Update_Values is
      Incr : constant Integer := Get_Increment_Value;
   begin
      Put_Line (
         Integer'Image (I)
         & " is incremented by "
         & Integer'Image (Incr)
         & " =" & Integer'Image (R)
      );
      I := R;
   end Display_Update_Values;
begin
   Put_Line ("First day of the week is " & Week.Mon);
   R := Increment_By (I);
   Display_Update_Values;

   R := Increment_By (I);
   Display_Update_Values;

   R := Increment_By (I, 5);
   Display_Update_Values;
   R := Increment_By (I);
   Display_Update_Values;

   Put_Line ("First day of the week is " & Week.Operations.Get_First_Of_Week);
end Submodules;
