-- Realizamos la especificacion del paquete que estaremos utilizando
-- para el almacenamiento de datos dentro de archivos de texto

-- Incluimos el paquete ADA.Text_IO porque estaremos trabajando con
-- archivos de texto

with ADA.Text_IO;
use ADA.Text_IO;

package almacenamiento is

   -- Procedimiento que guardará la información generada de los diferentes
   -- sensores en archivos de texto. La informacion relacionada con los datos se
   -- guardara en un archivo dedicado a los datos, mientras que la informacion
   -- relacionada con los errores se guardara en un archivo dedicado a los errores
   -- El parametro k servirá como identificador de la iteracion donde estamos.
   -- El parametro flag servirá para identificar la presencia de una advertencia
  procedure Guardar_Datos(output_data, output_error: File_Type; k : Integer; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Float; flag : Boolean);

end almacenamiento;
