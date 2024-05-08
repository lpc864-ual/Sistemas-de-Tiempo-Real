with Ada.Real_Time, Ada.Text_IO, almacenamiento_datos;
use Ada.Real_Time, Ada.Text_IO, almacenamiento_datos;

procedure Main is
   task sistema_control_campo_solar;
   task sistema_control_modulo_md;
   task sistema_seguridad;
   base_datos : BBDD;

   task body sistema_control_campo_solar
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(50);
   begin
      loop
         tiempo := Clock + tiempo_computo_minimo;
         base_datos.ejecutar_proceso_almacenamiento_datos("sistema de control del campo solar");
         delay until(tiempo);
      end loop;
   end sistema_control_campo_solar;

   task body sistema_control_modulo_md
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(100);
   begin
      loop
         tiempo := Clock + tiempo_computo_minimo;
         base_datos.ejecutar_proceso_almacenamiento_datos("sistema de control del modulo MD");
         delay until(tiempo);
      end loop;
   end sistema_control_modulo_md;

   task body sistema_seguridad
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Microseconds(6250);
   begin
      loop
         tiempo := Clock + tiempo_computo_minimo;
         base_datos.ejecutar_proceso_almacenamiento_datos("sistema de seguridad");
         delay until(tiempo);
      end loop;
   end sistema_seguridad;

begin
   --  Insert code here.
   null;
end Main;
