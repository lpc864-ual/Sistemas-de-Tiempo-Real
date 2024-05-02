with Ada.Real_Time, Ada.Text_IO;
use Ada.Real_Time, Ada.Text_IO;

package body visualizacion_pantalla
is
   procedure ejecutar_proceso_visualizacion_pantalla
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(5);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      select
         delay 0.010;
      then abort
         Put_Line("VISUALIZACION POR PANTALLA: Los datos han sido mostrados por pantalla.");
         delay until (tiempo);
      end select;
   end ejecutar_proceso_visualizacion_pantalla;
end visualizacion_pantalla;
