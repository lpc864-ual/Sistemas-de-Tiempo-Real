with Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;
use Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;

package body sistema_control_campo_solar
is
   procedure ejecutar_proceso_control_campo_solar
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Empezando proceso de control.");
      leer_tarjeta_AD;
      calculo_accion_control;
      envio_senal_control_actuador;
      envio_datos_visualizacion_pantalla;
      envio_datos_almacenamiento_datos;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Terminado proceso de control.");
   end ejecutar_proceso_control_campo_solar;

   procedure leer_tarjeta_AD
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Leyendo tarjeta A/D.");
   end leer_tarjeta_AD;

   procedure calculo_accion_control
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Calculando accion de control.");
   end calculo_accion_control;

   procedure envio_senal_control_actuador
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando senal de control al actuador.");
   end envio_senal_control_actuador;

   procedure envio_datos_visualizacion_pantalla
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando datos para la visualizacion por pantalla.");
      ejecutar_proceso_visualizacion_pantalla;
   end envio_datos_visualizacion_pantalla;

   procedure envio_datos_almacenamiento_datos
   is
   begin
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando datos para el almacenamiento de datos.");
      ejecutar_proceso_almacenamiento_datos;
   end envio_datos_almacenamiento_datos;
end sistema_control_campo_solar;
