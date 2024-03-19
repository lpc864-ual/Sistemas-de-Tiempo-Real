-- Realizamos la body del paquete que incluye los tipos de datos, procedimientos
-- y funciones que estaremos utilizando en el main.adb para el procesamiento
-- de los datos procedente de la instalación destiladora

-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float

package body simulador is

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
   function ST1_F(ST2:Float) return Float is
   begin
      return ST2 - 10.0;
   end ST1_F;

   function ST2_F(ST1,ST4,SC1,SR1,T:Float) return Float is
   begin
      return ST1+(((b*leq*SR1)*c)/(SC1*cp*p)) - (((h*(T-ST4))*c)/(SC1*cp*p));
   end ST2_F;

   function SD1_F(ST2,ST3,SC2:Float) return Float is
   begin
      return 24.0*(0.135+0.003*ST2-0.0203*ST3-0.001*SC2+0.00004*ST2*SC2);
   end SD1_F;

   function T_F(ST1,ST2:Float) return Float is
   begin
      return (ST1+ST2)/2.0;
   end T_F;

end simulador;
