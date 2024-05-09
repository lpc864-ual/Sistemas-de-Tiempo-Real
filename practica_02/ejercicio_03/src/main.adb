with Ada.Real_Time, sistema_control_campo_solar, sistema_control_modulo_md, sistema_seguridad, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Real_Time, sistema_control_campo_solar, sistema_control_modulo_md,sistema_seguridad, Ada.Text_IO, Ada.Integer_Text_IO;

procedure main
is
   tiempo : Time;
   tiempo_computo_minimo : Time_Span := Milliseconds(25);
   iteracion : Integer;
   ciclo : Integer;
begin
   iteracion := 00;
   loop
      iteracion := iteracion + 1;
      Put_Line("");
      Put_Line("------------");
      Put_Line("ITERACION " & Integer'Image(iteracion));
      Put_Line("------------");
      Put_Line("");

      ciclo := 01;
      Put_Line("CICLO  " & Integer'Image(ciclo));
      Put_Line("----------");

      tiempo := Clock + tiempo_computo_minimo;
      ejecutar_proceso_control_campo_solar;
      ejecutar_proceso_control_modulo_md;
      ejecutar_proceso_seguridad;
      delay until(tiempo);

      ciclo := ciclo + 1;
      Put_Line("");
      Put_Line("CICLO  " & Integer'Image(ciclo));
      Put_Line("----------");

      tiempo := Clock + tiempo_computo_minimo;
      ejecutar_proceso_seguridad;
      delay until(tiempo);

      ciclo := ciclo + 1;
      Put_Line("");
      Put_Line("CICLO  " & Integer'Image(ciclo));
      Put_Line("----------");

      tiempo := Clock + tiempo_computo_minimo;
      ejecutar_proceso_control_campo_solar;
      ejecutar_proceso_seguridad;
      delay until(tiempo);

      ciclo := ciclo + 1;
      Put_Line("");
      Put_Line("CICLO  " & Integer'Image(ciclo));
      Put_Line("----------");


      tiempo := Clock + tiempo_computo_minimo;
      ejecutar_proceso_seguridad;
      delay until(tiempo);
      delay 5.0;
   end loop;
end main;
