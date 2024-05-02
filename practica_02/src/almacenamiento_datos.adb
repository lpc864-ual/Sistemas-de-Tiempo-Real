with Ada.Real_Time, Ada.Text_IO;
use Ada.Real_Time, Ada.Text_IO;

package body almacenamiento_datos
is
   procedure ejecutar_proceso_almacenamiento_datos
   is
   begin
      select
         delay 0.015;
      then abort
         Put_Line("ALMACENAMIENTO DE DATOS: Los datos han sido almacenados en la base de datos.");
      end select;
   end ejecutar_proceso_almacenamiento_datos;
end almacenamiento_datos;
