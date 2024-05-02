with sistema_control_campo_solar, sistema_control_modulo_md, sistema_seguridad, Ada.Text_IO;
use sistema_control_campo_solar, sistema_control_modulo_md, sistema_seguridad, Ada.Text_IO;

procedure ejercicio_03
is
begin
   --loop
   ejecutar_proceso_control_campo_solar;
   Put_Line("");
   ejecutar_proceso_control_modulo_md;
   Put_Line("");
   ejecutar_proceso_seguridad;
   --end loop;
end ejercicio_03;
