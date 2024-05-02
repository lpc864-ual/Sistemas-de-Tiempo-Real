with Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;
use Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;

package body sistema_seguridad
is
   procedure ejecutar_proceso_seguridad
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Microseconds(6250);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE SEGURIDAD: Empezando proceso de seguridad.");
      leer_tarjeta_AD;
      comprobar_limites_seguridad;
      envio_datos_visualizacion_pantalla;
      envio_datos_almacenamiento_datos;
      Put_Line("SISTEMA DE SEGURIDAD: Terminado proceso de seguridad.");
      delay until (tiempo);
   end ejecutar_proceso_seguridad;

   procedure leer_tarjeta_AD
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Microseconds(6250);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE SEGURIDAD: Leyendo tarjeta A/D.");
      delay until (tiempo);
   end leer_tarjeta_AD;

   procedure comprobar_limites_seguridad
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Microseconds(6250);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE SEGURIDAD: Comprobando limites de seguridad.");
      delay until (tiempo);
   end comprobar_limites_seguridad;

   procedure envio_datos_visualizacion_pantalla
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Microseconds(6250);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE SEGURIDAD: Enviando datos para la visualizacion por pantalla.");
      ejecutar_proceso_visualizacion_pantalla;
      delay until (tiempo);
   end envio_datos_visualizacion_pantalla;

   procedure envio_datos_almacenamiento_datos
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Microseconds(6250);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      select
         delay 0.015;
      then abort
         Put_Line("SISTEMA DE SEGURIDAD: Enviando datos para el almacenamiento de datos.");
         ejecutar_proceso_almacenamiento_datos;
         delay until (tiempo);
      end select;
   end envio_datos_almacenamiento_datos;
end sistema_seguridad;
