with Ada.Real_Time, Ada.Text_IO;
use Ada.Real_Time, Ada.Text_IO;

package body servidores
is
   -- Tarjeta
   task body tarjeta
   is
   begin
      loop
         select
            accept Leer(origen : String)
            do
               Put_Line(origen & ": Realizando lectura de la tarjeta.");
            end Leer;
         or
            accept Escribir(origen : String)
            do
               Put_Line(origen & ": Realizando escritura sobre la tarjeta.");
            end Escribir;
         or terminate;
         end select;
      end loop;
   end tarjeta;

   -- Visualizacion por pantalla
   task body visualizacion_pantalla
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(5);
   begin
      loop
         accept ejecutar_proceso_visualizacion_pantalla(origen : String)
         do
            select
               delay 0.010;
            then abort
               tiempo := Clock + tiempo_computo_minimo;
               Put_Line(origen & ": Visualizando por pantalla.");
               delay until(tiempo);
            end select;
         end ejecutar_proceso_visualizacion_pantalla;
      end loop;
   end visualizacion_pantalla;

   -- Almacenamiento de datos
   protected body BBDD
   is
      entry ejecutar_proceso_almacenamiento_datos(origen : String)
      when operacion_exitosa
      is
      begin
         Put_Line(origen & ": Los datos han sido almacenados en la base de datos correctamente.");
         operacion_exitosa := true;
      end ejecutar_proceso_almacenamiento_datos;
   end BBDD;
end servidores;
