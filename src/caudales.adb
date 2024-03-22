-- Realizamos la body del paquete que incluye los tipos de datos, procedimientos
-- y funciones que estaremos utilizando en el main.adb para el procesamiento
-- de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, visualizacion, almacenamiento, seguridad, tipos;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, visualizacion, almacenamiento, seguridad, tipos;

package body caudales is

   -- Declaramos e inicializamos las variables que estaremos utilizando
   -- en el programa. Las variables representaran las constantes del problema
   b : constant Float := 0.15;
   leq : constant Float := 15.0;
   h : constant Float := 4.0;
   c : constant Float := 9.0 * 2.0 * 6.0 * 10000.0;
   cp : constant Float := 4190.0;
   p : constant Float := 975.0;

   -- Definimos el cuerpo de las funciones definidas en la especificación del
   -- paquete
   function SC1_Optimo_F(ST1, ST2_Optimo, ST4, SR1, T: Float) return Float is
   begin
      return (c * (-SR1 * b * leq - ST4 * h + T * h)) / (cp * p * (ST1 - ST2_Optimo));
   end SC1_Optimo_F;

   function SC2_Optimo_F(ST2_Optimo, ST3, SD1_Optimo: Float) return Float is
   begin
      return (0.135 + 0.003 * ST2_Optimo - 0.0203 * ST3 - SD1_Optimo / 24.0) / (0.001 - 0.00004 * ST2_Optimo);
   end SC2_Optimo_F;

end caudales;
