with Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure Myproj is
   N : Integer;
--   subtype Alphabet is Character range 'A' .. 'Z';
begin
   Ada.Text_IO.Put_Line ("Hello, world!");
--   for Char in Alphabet loop
--      Put_Line ("- " & Alphabet'First);
--   end loop;
   Ada.Text_IO.Put ("Enter an integer value: ");
   Ada.Integer_Text_IO.Get (N);

   Ada.Integer_Text_IO.Put (N);
   if N > 0 then
      Ada.Text_IO.Put (" is a positive number");
   else
      Ada.Text_IO.Put (" is not a positive number");
   end if;
   Ada.Text_IO.Put ("\n");

   for I in reverse 1 .. N loop
      Ada.Text_IO.Put_Line ("Number " & Integer'Image(I));
   end loop;

end Myproj;
