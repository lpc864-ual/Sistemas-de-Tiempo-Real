-- Realizamos el cuerpo del paquete que estaremos utilizando
-- para la visualizacion de datos en consola

-- Especificamos los paquetes que estaremos utilizando: Ada.Text_IO (trabajar con saltos de lineas tipo cadena de caracteres),
-- Ada.Integer_Text_IO (trabajar con enteros) y Ada.Float_Text_Io (trabajar con flotantes)

with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO;

package body visualizacion is

   -- Procedimiento que muestra la información generada de los diferentes
   -- sensores en consola. El parametro k sirve como identificador de la iteracion
   -- donde estamos. El parametro flag sirve para identificar la presencia de una advertencia
   procedure Visualizar_Pantalla(k : Integer; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Float; flag : Boolean) is
   begin

      -- Si k es uno, entonces mostramos la cabecera
      if (k = 1) then
         Put_Line("");
         Put("          K       ST1       ST2       ST3       ST4       SC1       SC2       SR1       SD1");
         Put_Line("");
      end if;

      -- Mostramos los diferentes valores con un espaciado entre ellos
      -- Los valores flotantes seran mostrados con tres valores en la parte entera, tres valores en la parte decimal
      -- y sin notacion cientifica
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

      -- Mostramos un salto de linea para que cuando vuelva a ser llamado el procedimiento
      -- los datos que sean escritos lo sean en una linea diferente
      if (flag) then
         Put("    WARNING: ST2 > 98.0");
      end if;

      Put_Line("");

   end Visualizar_Pantalla;

end visualizacion;
