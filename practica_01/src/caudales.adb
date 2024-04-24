-- Realizamos el cuerpo del paquete que estaremos utilizando
-- para calcular los valores de los controladores

package body caudales is

   -- Declaramos e inicializamos las variables que estaremos utilizando
   -- en el programa. Las variables representaran las constantes del problema
   b : constant Float := 0.15;
   leq : constant Float := 15.0;
   h : constant Float := 4.0;
   c : constant Float := 9.0 * 2.0 * 6.0 * 10000.0;
   cp : constant Float := 4190.0;
   p : constant Float := 975.0;

   -- Definimos SC1
   function SC1_Optimo_F(ST1, ST2_Optimo, ST4, SR1, T: Float) return Float is
      SC1 : Float;
   begin
      SC1 := (c * (-SR1 * b * leq - ST4 * h + T * h)) / (cp * p * (ST1 - ST2_Optimo));
      if (SC1 < 7.5) then
        SC1 := 7.5;
      end if;
      if (SC1 > 30.0) then
        SC1 := 30.0;
      end if;
      return SC1;
   end SC1_Optimo_F;

   -- Definimos SC2
   function SC2_Optimo_F(ST2_Optimo, ST3, SD1_Optimo: Float) return Float is
      SC2 : Float;
   begin
      SC2 := (0.135 + 0.003 * ST2_Optimo - 0.0203 * ST3 - SD1_Optimo / 24.0) / (0.001 - 0.00004 * ST2_Optimo);
      if (SC2 < 400.0) then
        SC2 := 400.0;
      end if;
      if (SC2 > 600.0) then
        SC2 := 600.0;
      end if;
      return SC2;
   end SC2_Optimo_F;

end caudales;
