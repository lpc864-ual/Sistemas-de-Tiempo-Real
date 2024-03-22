-- Realizamos la especificacion del paquete que estaremos utilizando
-- para crear los diferentes tipos de datos que estaremos utilizando

package tipos is

   -- Se crea el tipo de dato Coleccion que es un array de tamaño indefinido
   type Coleccion is array (Integer range<>) of Float;

end tipos;
