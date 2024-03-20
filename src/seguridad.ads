-- Realizamos la especificacion del paquete que incluye los tipos de datos,
-- procedimientos y funciones que estaremos utilizando en el main.adb para
-- el procesamiento de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

package seguridad is

   -- Definimos las funciones que estaremos utilizando en el main.adb
  function Alarma(ST2 : Float) return Boolean;

end seguridad;
