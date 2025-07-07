with Ada.Text_IO;

procedure Basictypes is
   type Custom_Int is range -1 .. 20;
   M : constant Custom_Int := 27 / 2;

   type Mod_Int is mod 2 ** 5;

   type Days is (
      Monday,
      Tuesday,
      Wednesday,
      Thursday,
      Friday,
      Saturday,
      Sunday
   );

   A : Float := 2.5;
begin
   for I in Custom_Int loop
      Ada.Text_IO.Put_Line ("I:" & Custom_Int'Image (I));
   end loop;

   for I in 1 .. M loop
      Ada.Text_IO.Put_Line ("I:" & Custom_Int'Image (I));
   end loop;

   for M in Mod_Int loop
      Ada.Text_IO.Put_Line ("M:" & Mod_Int'Image (M));
   end loop;

   for Day in Days loop
      case Day is
         when Monday .. Friday =>
            Ada.Text_IO.Put_Line ("Hello on " & Days'Image (Day));
         when Saturday .. Sunday => Ada.Text_IO.Put_Line ("Week end!");
      end case;
   end loop;

   Ada.Text_IO.Put_Line ("Float:" & Float'Image (A));
   A := abs (A - 4.5);
   Ada.Text_IO.Put_Line ("Float:" & Float'Image (A));
   A := A ** 2 + 1.0;
   Ada.Text_IO.Put_Line ("Float:" & Float'Image (A));
end Basictypes;
