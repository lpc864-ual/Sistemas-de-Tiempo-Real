with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;

package body visualizacion is

   procedure Visualizar_Pantalla(k : Integer; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Float; flag : Boolean) is
   begin

      if (k = 1) then
         Put_Line("");
         Put("          K       ST1       ST2       ST3       ST4       SC1       SC2       SR1       SD1");
         Put_Line("");
      end if;

      Put(k);
      Put("     ");
      Put(ST1, 3, 2, 0);
      Put("    ");
      Put(ST2, 3, 2, 0);
      Put("    ");
      Put(ST3, 3, 2, 0);
      Put("    ");
      Put(ST4, 3, 2, 0);
      Put("    ");
      Put(SC1, 3, 2, 0);
      Put("    ");
      Put(SC2, 3, 2, 0);
      Put("    ");
      Put(SR1, 3, 2, 0);
      Put("    ");
      Put(SD1, 3, 2, 0);

      if (flag) then
         Put("    WARNING: ST2 > 98.0");
      end if;

      Put_Line("");

   end Visualizar_Pantalla;

end visualizacion;
