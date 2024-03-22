-- Realizamos la especificacion del paquete que incluye los tipos de datos,
-- procedimientos y funciones que estaremos utilizando en el main.adb para
-- el procesamiento de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

package caudales is

   -- Definimos las funciones que estaremos utilizando en el main.adb
   function SC1_Optimo_F(ST1, ST2_Optimo, ST4, SR1, T: Float) return Float;
   function SC2_Optimo_F(ST2_Optimo, ST3, SD1_Optimo: Float) return Float;

end caudales;
