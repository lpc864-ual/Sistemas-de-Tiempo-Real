-- Realizamos la especificacion del paquete que incluye los tipos de datos,
-- procedimientos y funciones que estaremos utilizando en el main.adb para
-- el procesamiento de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

package visualizacion_pantalla is

   -- Definimos las funciones que estaremos utilizando en el main.adb
  procedure Print_Data(k, ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Integer);

end visualizacion_pantalla;
