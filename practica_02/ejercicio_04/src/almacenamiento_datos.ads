package almacenamiento_datos
is
   protected type BBDD
   is
      entry ejecutar_proceso_almacenamiento_datos(origen: String);
   private
      operacion_exitosa : Boolean := true;
   end BBDD;
end almacenamiento_datos;
