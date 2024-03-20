with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;

package body almacenamiento is

   procedure Guardar_Datos(output_data, output_error : File_Type; k : Integer; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Float; flag : Boolean) is
   begin
      if (k = 1) then
         Put_Line(output_data, ("          K       ST1       ST2       ST3       ST4       SC1       SC2       SR1       SD1"));
         Put_Line(output_data, "");
      end if;
      Put(output_data, k);
      Put(output_data, "     ");
      Put(output_data, ST1, 3, 2, 0);
      Put(output_data, "    ");
      Put(output_data, ST2, 3, 2, 0);
      Put(output_data, "    ");
      Put(output_data, ST3, 3, 2, 0);
      Put(output_data, "    ");
      Put(output_data, ST4, 3, 2, 0);
      Put(output_data, "    ");
      Put(output_data, SC1, 3, 2, 0);
      Put(output_data, "    ");
      Put(output_data, SC2, 3, 2, 0);
      Put(output_data, "    ");
      Put(output_data, SR1, 3, 2, 0);
      Put(output_data, "    ");
      Put(output_data, SD1, 3, 2, 0);

      if (flag) then
          Put(output_error, "WARNING: ST2 > 98.0 (k = " & k'Image & ")");
         Put_Line(output_error, "");
      end if;

      Put_Line(output_data, "");
   end Guardar_Datos;

end almacenamiento;
