with Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;
use Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;

package body sistema_control_modulo_md
is
   procedure ejecutar_proceso_control_modulo_md
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Empezando proceso de control.");
      leer_tarjeta_AD;
      calculo_accion_control;
      envio_senal_control_actuador;
      envio_datos_visualizacion_pantalla;
      envio_datos_almacenamiento_datos;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Terminado proceso de control.");
   end ejecutar_proceso_control_modulo_md;

   procedure leer_tarjeta_AD
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Leyendo tarjeta A/D.");
   end leer_tarjeta_AD;

   procedure calculo_accion_control
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Calculando accion de control.");
   end calculo_accion_control;

   procedure envio_senal_control_actuador
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Enviando senal de control al actuador.");
   end envio_senal_control_actuador;

   procedure envio_datos_visualizacion_pantalla
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Enviando datos para la visualizacion por pantalla.");
      ejecutar_proceso_visualizacion_pantalla;
   end envio_datos_visualizacion_pantalla;

   procedure envio_datos_almacenamiento_datos
   is
   begin
      select
         delay 0.015;
      then abort
         Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Enviando datos para el almacenamiento de datos.");
      end select;
      ejecutar_proceso_almacenamiento_datos;
   end envio_datos_almacenamiento_datos;
end sistema_control_modulo_md;
