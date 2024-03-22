-- Realizamos la especificacion del paquete que estaremos utilizando
-- para calcular los valores de los controladores

package caudales is

   -- Las funciones se obtienen despejando SC1 y SC2 de las ecuaciones
   -- de ST2 y SD1 respectivamente. Se toman los valores optimos de ST2
   -- y SD1
   function SC1_Optimo_F(ST1, ST2_Optimo, ST4, SR1, T: Float) return Float;
   function SC2_Optimo_F(ST2_Optimo, ST3, SD1_Optimo: Float) return Float;

end caudales;
