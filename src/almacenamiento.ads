-- Realizamos la especificacion del paquete que incluye los tipos de datos,
-- procedimientos y funciones que estaremos utilizando en el main.adb para
-- el procesamiento de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

with ADA.Text_IO;
use ADA.Text_IO;

package almacenamiento is

   -- Definimos las funciones que estaremos utilizando en el main.adb
  procedure Guardar_Datos(output_data, output_error: File_Type; k : Integer; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Float; flag : Boolean);

end almacenamiento;
