with Ada.Real_Time, Ada.Text_IO, servidores;
use Ada.Real_Time, Ada.Text_IO, servidores;

package body clientes
is
   base_datos : BBDD;

   task body sistema_control_campo_solar
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(50);
   begin
      loop
         tiempo := Clock + tiempo_computo_minimo;
         tarjeta.Leer("Sistema de control del campo solar");
         Put_Line("Sistema de control del campo solar: Calculando accion de control.");
         tarjeta.Escribir("Sistema de control del campo solar");
         visualizacion_pantalla.ejecutar_proceso_visualizacion_pantalla("Sistema de control del campo solar");
         base_datos.ejecutar_proceso_almacenamiento_datos("Sistema de control del campo solar");
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
         tarjeta.Leer("Sistema de control del modulo MD");
         Put_Line("Sistema de control del modulo MD: Calculando accion de control.");
         tarjeta.Escribir("Sistema de control del modulo MD");
         visualizacion_pantalla.ejecutar_proceso_visualizacion_pantalla("Sistema de control del modulo MD");
         select
            delay 0.015;
         then abort
            base_datos.ejecutar_proceso_almacenamiento_datos("Sistema de control del modulo MD");
         end select;
         delay until(tiempo);
      end loop;
   end sistema_control_modulo_md;

   task body sistema_seguridad
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(25);
   begin
      loop
         tiempo := Clock + tiempo_computo_minimo;
         -- Falta hacer abajo
         Put_Line("Sistema de seguridad: Comprobando limites de seguridad.");
         visualizacion_pantalla.ejecutar_proceso_visualizacion_pantalla("Sistema de seguridad");
        select
            delay 0.015;
         then abort
            base_datos.ejecutar_proceso_almacenamiento_datos("Sistema de seguridad");
         end select;
         delay until(tiempo);
      end loop;
   end sistema_seguridad;
end clientes;
