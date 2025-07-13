with Ada.Numerics;
with Ada.Text_IO; use Ada.Text_IO;

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
   B : constant Integer := Integer'Last;

   procedure Display_Custom_Floating_Types is
      type T3 is digits 3;
      type T15 is digits 15;

      C1 : constant := 1.0e-4;
      A : constant T3 := 1.0 + C1;
      B : constant T15 := 1.0 + C1;
   begin
      Put_Line ("Size of T3 is:" & Integer'Image (T3'Size));
      Put_Line ("Size of T18 is:" & Integer'Image (T15'Size));
      Put_Line ("Value of A:" & T3'Image (A));
      Put_Line ("Value of B" & T15'Image (B));
   end Display_Custom_Floating_Types;

   procedure Floating_Point_Range is
      type T_Norm is new Float range -1.0 .. 1.0;
      A : T_Norm;
   begin
      A := 1.0;
      Put_Line ("FP range:" & T_Norm'Image (A));
   end Floating_Point_Range;

   procedure Custom_Range_Type is
      type T6_Inv_Trig is
         digits 6 range -Ada.Numerics.Pi / 2.0 .. Ada.Numerics.Pi / 2.0;
   begin
      Put_Line (
         "Custom range: <"
         & T6_Inv_Trig'Image (T6_Inv_Trig'First)
         & ";"
         & T6_Inv_Trig'Image (T6_Inv_Trig'Last)
         & ">"
      );
   end Custom_Range_Type;

   procedure Convert is
      type Meters is new Float;
      type Miles is new Float;

      function To_Miles (M : Meters) return Miles is
      begin
         return Miles (M) * 621.371e-6;
      end To_Miles;

      Dist_Imperial : Miles;
      Dist_Metric : constant Meters := 1_000.0;
   begin
      Dist_Imperial := To_Miles (Dist_Metric);
      Put_Line ("1KM to miles:" & Miles'Image (Dist_Imperial));
   end Convert;

   procedure Ssn is
      type Social_Security_Number is new Integer range 0 .. 999_99_9999;
      Ssn_1 : Social_Security_Number := 555_55_5555;
      I : Integer;
   begin
      I := Integer (Ssn_1);
      Put_Line ("I:" & Integer'Image (I));
      Ssn_1 := Social_Security_Number (I);
      Put_Line ("SSN:" & Social_Security_Number'Image (Ssn_1));
   end Ssn;
begin
   for I in Custom_Int loop
      Put_Line ("I:" & Custom_Int'Image (I));
   end loop;

   for I in 1 .. M loop
      Put_Line ("I:" & Custom_Int'Image (I));
   end loop;

   for M in Mod_Int loop
      Put_Line ("M:" & Mod_Int'Image (M));
   end loop;

   for Day in Days loop
      case Day is
         when Monday .. Friday =>
            Put_Line ("Hello on " & Days'Image (Day));
         when Saturday .. Sunday => Put_Line ("Week end!");
      end case;
   end loop;

   Put_Line ("Last int:" & Integer'Image (B));
   Put_Line ("Float:" & Float'Image (A));
   A := abs (A - 4.5);
   Put_Line ("Float:" & Float'Image (A));
   A := A ** 2 + 1.0;
   Put_Line ("Float:" & Float'Image (A));

   Display_Custom_Floating_Types;
   Floating_Point_Range;
   Custom_Range_Type;
   Convert;
   Ssn;
end Basictypes;
