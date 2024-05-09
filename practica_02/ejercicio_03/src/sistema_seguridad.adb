with Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;
use Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;

package body sistema_seguridad
is
   procedure ejecutar_proceso_seguridad
   is
      restriccion_temperatura : Boolean := true;
   begin
      Put_Line("SISTEMA DE SEGURIDAD: Empezando proceso de seguridad.");
      leer_tarjeta_AD;
      comprobar_limites_seguridad;
      if (restriccion_temperatura) then
          envio_datos_visualizacion_pantalla;
      end if;
      envio_datos_almacenamiento_datos;
      Put_Line("SISTEMA DE SEGURIDAD: Terminado proceso de seguridad.");
   end ejecutar_proceso_seguridad;

   procedure leer_tarjeta_AD
   is
   begin
      Put_Line("SISTEMA DE SEGURIDAD: Leyendo tarjeta A/D.");
   end leer_tarjeta_AD;

   procedure comprobar_limites_seguridad
   is
   begin
      Put_Line("SISTEMA DE SEGURIDAD: Comprobando limites de seguridad.");
   end comprobar_limites_seguridad;

   procedure envio_datos_visualizacion_pantalla
   is
   begin
      Put_Line("SISTEMA DE SEGURIDAD: Enviando datos para la visualizacion por pantalla.");
      ejecutar_proceso_visualizacion_pantalla;
   end envio_datos_visualizacion_pantalla;

   procedure envio_datos_almacenamiento_datos
   is
   begin
      select
         delay 0.015;
      then abort
         Put_Line("SISTEMA DE SEGURIDAD: Enviando datos para el almacenamiento de datos.");
      end select;
      ejecutar_proceso_almacenamiento_datos;
   end envio_datos_almacenamiento_datos;
end sistema_seguridad;
