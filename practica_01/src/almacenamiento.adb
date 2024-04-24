-- Realizamos el cuerpo del paquete que estaremos utilizando
-- para el almacenamiento de datos dentro de archivos de texto

-- Incluimos los paquetes Ada.Text_IO, Ada.Float_Text_IO y ADA.Integer_Text_IO
-- porque estaremos trabajando con archivos de texto, valores flotantes y enteros
-- respectivamente

with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;

package body almacenamiento is

   -- Procedimiento que guardará la información generada de los diferentes
   -- sensores en archivos de texto. La informacion relacionada con los datos se
   -- guardara en un archivo dedicado a los datos, mientras que la informacion
   -- relacionada con los errores se guardara en un archivo dedicado a los errores
   -- El parametro k servirá como identificador de la iteracion donde estamos.
   -- El parametro flag servirá para identificar la presencia de una advertencia
   procedure Guardar_Datos(output_data, output_error : File_Type; k : Integer; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Float; flag : Boolean) is
   begin

      -- Si k es uno, entonces mostramos la cabecera
      if (k = 1) then
         Put_Line(output_data, ("          K       ST1       ST2       ST3       ST4       SC1       SC2       SR1       SD1"));
      end if;

      -- Escribimos los diferentes valores con un espaciado entre ellos
      -- Los valores flotantes seran mostrados con tres valores en la parte entera, tres valores en la parte decimal
      -- y sin notacion cientifica
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

      -- Si flag es true, entonces tenemos una advertencia
      if (flag) then
          Put(output_error, "WARNING: ST2 > 98.0 (k = " & k'Image & ")");
         Put_Line(output_error, "");
      end if;

      -- Escribimos un salto de linea para que cuando vuelva a ser llamado el procedimiento
      -- los datos que sean escritos lo sean en una linea diferente
      Put_Line(output_data, "");

   end Guardar_Datos;
end almacenamiento;
