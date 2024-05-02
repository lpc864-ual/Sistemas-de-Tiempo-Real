with Ada.Real_Time, Ada.Text_IO, almacenamiento_datos;
use Ada.Real_Time, Ada.Text_IO, almacenamiento_datos;

package body sistema_control_modulo_md
is
   procedure ejecutar_proceso_control_modulo_md
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(100);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Empezando proceso de control.");
      leer_tarjeta_AD;
      calculo_accion_control;
      envio_senal_control_actuador;
      envio_datos_visualizacion_pantalla;
      envio_datos_almacenamiento_datos;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Terminado proceso de control.");
      delay until (tiempo);
   end ejecutar_proceso_control_modulo_md;

   procedure leer_tarjeta_AD
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(20);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Leyendo tarjeta A/D.");
      delay until (tiempo);
   end leer_tarjeta_AD;

   procedure calculo_accion_control
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(20);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Calculando accion de control.");
      delay until (tiempo);
   end calculo_accion_control;

   procedure envio_senal_control_actuador
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(20);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Enviando senal de control al actuador.");
      delay until (tiempo);
   end envio_senal_control_actuador;

   procedure envio_datos_visualizacion_pantalla
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(20);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Enviando datos para la visualizacion por pantalla.");
      delay until (tiempo);
   end envio_datos_visualizacion_pantalla;

   procedure envio_datos_almacenamiento_datos
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(20);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL MODULO MD: Enviando datos para el almacenamiento de datos.");
      ejecutar_proceso_almacenamiento_datos;
      delay until (tiempo);
   end envio_datos_almacenamiento_datos;
end sistema_control_modulo_md;
