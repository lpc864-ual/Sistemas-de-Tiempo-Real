-- Realizamos el cuerpo del paquete que estaremos utilizando
-- para el procesamiento de los datos procedente de la instalación destiladora

-- Incluimos el paquete ADA tipos porque estaremos trabajando con
-- los tipos de datos creados por nosotros mismos

with tipos;
use tipos;

package body simulador is

   -- Declaramos e inicializamos las variables que estaremos utilizando
   -- en el programa. Las variables representaran las constantes del problema
   b : constant Float := 0.15;
   leq : constant Float := 15.0;
   h : constant Float := 4.0;
   c : constant Float := 9.0 * 2.0 * 6.0 * 10000.0;
   cp : constant Float := 4190.0;
   p : constant Float := 975.0;

   -- Funcion que calcula el valor de ST1
   function ST1_F(ST2:Float) return Float is
   begin
      return ST2 - 10.0;
   end ST1_F;

   -- Funcion que calcula el valor de ST2
   function ST2_F(ST1,ST4,SC1,SR1,T:Float) return Float is
   begin
      return ST1+(((b*leq*SR1)*c)/(SC1*cp*p))-(((h*(T-ST4))*c)/(SC1*cp*p));
   end ST2_F;

   -- Funcion que calcula el valor de SD1
   function SD1_F(ST2,ST3,SC2:Float) return Float is
   begin
      return 24.0*(0.135+0.003*ST2-0.0203*ST3-0.001*SC2+0.00004*ST2*SC2);
   end SD1_F;

   -- Funcion que calcula el valor de T
   function T_F(ST1,ST2:Float) return Float is
   begin
      return (ST1+ST2)/2.0;
   end T_F;

   -- Procedimiento utilizado para generar los valores de ST1, ST2 y SD1 respectivamente
   -- El parametro flag servirá como identificador desde donde es llamado el procedimiento.
   -- Si flag es true, entonces es llamado desde ejercicio_01, caso contrario, es llamado
   -- desde ejercicio_02. Este paremetro nos servira para saber como indexar sobre SC1 y SC2 respectivamente
   procedure Simulacion(k : Integer; ST1_Previo, ST2_Previo : Float; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : in out Coleccion; flag : Boolean) is
   begin
      if (flag) then

         if (k = 1) then
            ST2(k) := ST2_F(ST1_Previo, ST4(k), SC1(1), SR1(k), T_F(ST1_Previo, ST2_Previo));
            ST1(k) := ST1_F(ST2(k));
            SD1(k) := SD1_F(ST2_Previo, ST3(k) , SC2(1));
         else
            ST2(k) := ST2_F(ST1(k - 1), ST4(k), SC1(1), SR1(k), T_F(ST1(k - 1), ST2(k - 1)));
            ST1(k) := ST1_F(ST2(k));
            SD1(k) := SD1_F(ST2(k - 1), ST3(k) , SC2(1));
         end if;

      else
         if (k = 1) then
            ST2(k) := ST2_F(ST1_Previo, ST4(k), SC1(k), SR1(k), T_F(ST1_Previo, ST2_Previo));
            ST1(k) := ST1_F(ST2(k));
            SD1(k) := SD1_F(ST2_Previo, ST3(k) , SC2(k));
         else
            ST2(k) := ST2_F(ST1(k - 1), ST4(k), SC1(k), SR1(k), T_F(ST1(k - 1), ST2(k - 1)));
            ST1(k) := ST1_F(ST2(k));
            SD1(k) := SD1_F(ST2(k - 1), ST3(k) , SC2(k));
         end if;
      end if;

   end Simulacion;

end simulador;
