with Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;
use Ada.Real_Time, Ada.Text_IO, almacenamiento_datos, visualizacion_pantalla;

package body sistema_control_campo_solar
is
   procedure ejecutar_proceso_control_campo_solar
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(50);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Empezando proceso de control.");
      leer_tarjeta_AD;
      calculo_accion_control;
      envio_senal_control_actuador;
      envio_datos_visualizacion_pantalla;
      envio_datos_almacenamiento_datos;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Terminado proceso de control.");
      delay until (tiempo);
   end ejecutar_proceso_control_campo_solar;

   procedure leer_tarjeta_AD
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Leyendo tarjeta A/D.");
      delay until (tiempo);
   end leer_tarjeta_AD;

   procedure calculo_accion_control
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Calculando accion de control.");
      delay until (tiempo);
   end calculo_accion_control;

   procedure envio_senal_control_actuador
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando senal de control al actuador.");
      delay until (tiempo);
   end envio_senal_control_actuador;

   procedure envio_datos_visualizacion_pantalla
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando datos para la visualizacion por pantalla.");
      ejecutar_proceso_visualizacion_pantalla;
      delay until (tiempo);
   end envio_datos_visualizacion_pantalla;

   procedure envio_datos_almacenamiento_datos
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      tiempo := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando datos para el almacenamiento de datos.");
      ejecutar_proceso_almacenamiento_datos;
      delay until (tiempo);
   end envio_datos_almacenamiento_datos;
end sistema_control_campo_solar;
