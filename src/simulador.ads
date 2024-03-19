-- Realizamos la especificacion del paquete que incluye los tipos de datos,
-- procedimientos y funciones que estaremos utilizando en el main.adb para
-- el procesamiento de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

package simulador is

   -- Definimos los tipos de datos que estaremos utiliando en el main.adb
   type Coleccion is array (Integer range<>) of Float;

   -- Definimos las funciones que estaremos utilizando en el main.adb
   function ST1_F(ST2:Float) return Float;
   function ST2_F(ST1,ST4, SC1, SR1,T:Float) return Float;
   function SD1_F(ST2,ST3,SC2:Float) return Float;
   function T_F(ST1,ST2:Float) return Float;

end simulador;
