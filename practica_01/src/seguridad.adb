-- Realizamos la especificacion del paquete que estaremos utilizando
-- para generar las advertencias

package body seguridad is

   -- Funcion que devuelve true si el valor de ST2 supera cierto umbral.
   -- En dicha situacion, tenemos una advertencia de seguridad
   function Alarma(ST2 : Float) return Boolean is
   begin
      if (ST2 > 98.0) then
        return true;
      end if;
      return false;
   end Alarma;

end seguridad;
