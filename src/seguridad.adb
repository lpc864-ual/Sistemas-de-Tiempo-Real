with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, visualizacion, almacenamiento;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, visualizacion, almacenamiento;

package body seguridad is

   function Alarma(ST2 : Float) return Boolean is
   begin
      if (ST2 > 98.0) then
        return true;
      end if;
      return false;
   end Alarma;

end seguridad;
