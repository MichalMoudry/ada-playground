with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Calendar;
with Increment;

procedure Myproj is
   N : Integer;
   I : Integer := 1;
   X : Integer := 1;
   T : Integer;

   procedure MultiplyProc is
      R : Float;
   begin
      R := 10.0 * 3.0;
      Ada.Text_IO.Put_Line ("Result: " & Float'Image (R));
   end MultiplyProc;

   function Multiply (X : Integer; Y : Integer) return Integer is
   begin
      return X * Y;
   end Multiply;

   function To_Holocene_Year (T : Ada.Calendar.Time) return Integer is
   begin
      return 0;
   end To_Holocene_Year;

   HY : Integer;
--   subtype Alphabet is Character range 'A' .. 'Z';
begin
   HY := To_Holocene_Year (Ada.Calendar.Time_Of (2025, 1, 1));
   Ada.Text_IO.Put_Line ("Holocene year: " & Integer'Image (HY));

   loop
      Ada.Text_IO.Put_Line ("Bare loop" & Integer'Image (I));
      exit when I = 5;
      I := Increment (I);
   end loop;

   Ada.Text_IO.Put_Line ("Hello, world!");
--   for Char in Alphabet loop
--      Put_Line ("- " & Alphabet'First);
--   end loop;
   Ada.Text_IO.Put ("Enter an integer value: ");
   Ada.Integer_Text_IO.Get (N);

   Ada.Integer_Text_IO.Put (N);
   if N = 31 then
      Ada.Text_IO.Put (" is equal to 31");
   elsif N > 0 then
      Ada.Text_IO.Put (" is a positive number");
   else
      Ada.Text_IO.Put (" is not a positive number");
   end if;
   Ada.Text_IO.Put ("\n");

   for F in reverse 1 .. N loop
      Ada.Text_IO.Put_Line ("Number " & Integer'Image (I));
   end loop;

   while X <= 5 loop
      Ada.Text_IO.Put_Line ("While loop " & Integer'Image (X));
      X := X + 1;
   end loop;

   loop
      Ada.Text_IO.Put ("Enter an integer value: ");
      Ada.Integer_Text_IO.Get (T);
      Ada.Integer_Text_IO.Put (T);
      case T is
         when 0 | 360 => Ada.Text_IO.Put_Line (" is due north");
         when 1 .. 89 => Ada.Text_IO.Put_Line (
            " is in the northeast quadrant"
         );
         when others =>
            Ada.Text_IO.Put_Line (" => exiting loop");
            exit;
      end case;
   end loop;

   MultiplyProc;
   declare
      Res : constant Integer := Multiply (10, 50);
   begin
      Ada.Text_IO.Put_Line ("Dynamic result: " & Integer'Image (Res));
   end;

   for W in 1 .. 10 loop
      Ada.Integer_Text_IO.Put (W);
      Ada.Text_IO.Put_Line (if W mod 2 = 0 then " is even" else " is odd");
   end loop;

end Myproj;
