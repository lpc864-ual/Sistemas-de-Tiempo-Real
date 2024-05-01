with Ada.Real_Time, Ada.Text_IO;
use Ada.Real_Time, Ada.Text_IO;

package body sistema_control_campo_solar
is
   procedure leer_tarjeta_AD()
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      t := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Leyendo tarjeta A/D.");
      delay until (t);
   end leer_tarjeta_AD;

   procedure calculo_accion_control()
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      t := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Calculando accion de control.");
      delay until (t);
   end calculo_accion_control;

   procedure envio_senal_control_actuador()
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      t := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando senal de control al actuador.");
      delay until (t);
   end envio_senal_control_actuador;

   procedure envio_datos_visualizacion_pantalla()
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      t := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando datos para la visualizacion por pantalla.");
      delay until (t);
   end envio_datos_visualizacion_pantalla;

   procedure envio_datos_almacenamiento_datos()
   is
      tiempo : Time;
      tiempo_computo_minimo : Time_Span := Milliseconds(10);
   begin
      t := Clock + tiempo_computo_minimo;
      Put_Line("SISTEMA DE CONTROL DEL CAMPO SOLAR: Enviando datos para el almacenamiento de datos.");
      delay until (t);
   end envio_datos_almacenamiento_datos;
end sistema_control_campo_solar;
