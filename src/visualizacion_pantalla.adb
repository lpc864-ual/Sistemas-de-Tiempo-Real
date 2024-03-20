-- Realizamos la body del paquete que incluye los tipos de datos, procedimientos
-- y funciones que estaremos utilizando en el main.adb para el procesamiento
-- de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

with Ada.Float_Text_IO, ADA.Integer_Text_IO;
use Ada.Float_Text_IO, ADA.Integer_Text_IO;

package body visualizacion_pantalla is

   procedure Print_Data(k, ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Integer) is
    begin
        Ada.Text_IO.Put(k);
        Ada.Text_IO.Put("     ");
        Ada.Text_IO.Put(ST1, 3, 2, 0);
        Ada.Text_IO.Put("    ");
        Ada.Text_IO.Put(ST2, 3, 2, 0);
        Ada.Text_IO.Put("    ");
        Ada.Text_IO.Put(ST3, 3, 2, 0);
        Ada.Text_IO.Put("    ");
        Ada.Text_IO.Put(ST4, 3, 2, 0);
        Ada.Text_IO.Put("    ");
        Ada.Text_IO.Put(SC1, 3, 2, 0);
        Ada.Text_IO.Put("    ");
        Ada.Text_IO.Put(SC2, 3, 2, 0);
        Ada.Text_IO.Put("    ");
        Ada.Text_IO.Put(SR1, 3, 2, 0);
        Ada.Text_IO.Put("    ");
        Ada.Text_IO.Put(SD1, 3, 2, 0);
   end Print_Data;

end visualizacion_pantalla;
