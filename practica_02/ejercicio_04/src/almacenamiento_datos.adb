with Ada.Real_Time, Ada.Text_IO;
use Ada.Real_Time, Ada.Text_IO;

package body almacenamiento_datos
is
   protected body BBDD
   is
      entry ejecutar_proceso_almacenamiento_datos(origen : String)
      when operacion_exitosa
      is
      begin
         Put_Line("ALMACENAMIENTO DE DATOS: Los datos provenientes del " &  origen & " han sido almacenados en la base de datos.");
         operacion_exitosa := true;
      end ejecutar_proceso_almacenamiento_datos;
   end BBDD;
end almacenamiento_datos;
