with sistema_control_campo_solar, sistema_control_modulo_md, sistema_seguridad, Ada.Text_IO, Ada.Integer_Text_IO;
use sistema_control_campo_solar, sistema_control_modulo_md,sistema_seguridad, Ada.Text_IO, Ada.Integer_Text_IO;

procedure ejercicio_03
is
   iteracion : Integer := 1;
begin
   loop
      Put_Line("");
      Put_Line("Iteracion " & Integer'Image(iteracion));
      Put_Line("");
      ejecutar_proceso_control_campo_solar;
      Put_Line("");
      ejecutar_proceso_control_modulo_md;
      Put_Line("");
      ejecutar_proceso_seguridad;
      Put_Line("");
      iteracion := iteracion + 1;
      delay 5.0;
   end loop;
end ejercicio_03;
