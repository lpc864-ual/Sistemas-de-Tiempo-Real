-- Realizamos la especificacion del paquete que estaremos utilizando
-- para la visualizacion de datos en consola

package visualizacion is

   -- Procedimiento que muestra la información generada de los diferentes
   -- sensores en consola. El parametro k sirve como identificador de la iteracion
   -- donde estamos. El parametro flag sirve para identificar la presencia de una advertencia
   procedure Visualizar_Pantalla(k : Integer; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Float; flag : Boolean);

end visualizacion;
