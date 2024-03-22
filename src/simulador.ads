-- Realizamos la especificacion del paquete que estaremos utilizando
-- para el procesamiento de los datos procedente de la instalación destiladora

-- Incluimos el paquete ADA tipos porque estaremos trabajando con
-- los tipos de datos creados por nosotros mismos

with tipos;
use tipos;

package simulador is

   -- Definimos las funciones que estaremos utilizando en el simulador
   -- Dichas funciones estan definidas en el documento de practica
   function ST1_F(ST2:Float) return Float;
   function ST2_F(ST1,ST4, SC1, SR1,T:Float) return Float;
   function SD1_F(ST2,ST3,SC2:Float) return Float;
   function T_F(ST1,ST2:Float) return Float;

   -- Definimos el procedimiento que estará utilizando las funciones anteriores
   -- para generar los valores de ST1, ST2 y SD1 respectivamente.
   -- El parametro flag servirá como identificador desde donde es llamado el procedimiento.
   -- Si flag es true, entonces es llamado desde ejercicio_01, caso contrario, es llamado
   -- desde ejercicio_02. Este paremetro nos servira para saber como indexar sobre SC1 y SC2 respectivamente
   procedure Simulacion(k : Integer; ST1_Previo, ST2_Previo : Float; ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : in out Coleccion; flag : Boolean);

end simulador;
