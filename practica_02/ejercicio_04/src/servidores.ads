package servidores
is
   -- Tarjeta
   task tarjeta is
      entry Leer(origen: String);
      entry Escribir(origen: String);
   end tarjeta;

   -- Visualizacion por pantalla
   task visualizacion_pantalla is
      entry ejecutar_proceso_visualizacion_pantalla(origen: String);
   end visualizacion_pantalla;

   -- Almacenamiento de datos
   protected type BBDD
   is
      entry ejecutar_proceso_almacenamiento_datos(origen: String);
   private
      operacion_exitosa : Boolean := true;
   end BBDD;
end servidores;
