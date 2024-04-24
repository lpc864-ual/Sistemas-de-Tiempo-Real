-- Especificamos los paquetes que estaremos utilizando: Ada.Text_IO (trabajar con archivos de texto),
-- Ada.Integer_Text_IO (trabajar con enteros), Ada.Float_Text_Io (trabajar con flotantes), tipos, caudales,
-- simuladores, visualizacion, almacenamiento y seguridad

with Ada.Text_IO, ADA.Integer_Text_IO, Ada.Float_Text_IO, tipos, caudales, simulador, visualizacion, almacenamiento, seguridad;
use Ada.Text_IO, ADA.Integer_Text_IO, Ada.Float_Text_IO, tipos, caudales, simulador, visualizacion, almacenamiento, seguridad;

procedure ejercicio_02 is

   -- Declaramos variables. La primera variable servira para establecer conexion
   -- logica de lectura, la siguiente servira como indice de indexacion, las
   -- siguientes serviran para guardar la informacion de los diferentes sensores
   -- y las dos ultimas serviran para establecer conexion logica de lectura. Al establecer
   -- conexion logica estamos estableciendo el sentido del flujo de dato. Una conexion
   -- logica de lectura establece del .txt al file, mientras que una conexion logica de
   -- escritura establece del file al .txt
   input : File_Type;
   k : Integer;
   ST1_Previo, ST2_Previo, ST2_Optimo, SD1_Optimo : Float;
   ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Coleccion(1..15);
   output_data, output_error : File_Type;

begin

   -- Inicializamos ciertos valores. En concreto, En concreto, estaremos inicializando los valores
   -- previos a la simulacion de ST1 y ST2 junto a los valores optimos de ST2 y SD1. Inicializamos
   -- ST1 para evitar warnings en el proceso de compilacion. El warning que apareceria seria debido al
   -- condicional dentro del bucle que nos diria que tuviesemos cuidado porque si en la primera ejecucion
   -- k es distinto de 1, entonces se meteria al else donde ST1 no estaria inicializado (se inicializa
   -- terminada la primera iteracion). Sin embargo, como k siempre vale uno no haria falta. No obstante,
   -- lo inicializamos para tener un codigo sin warnings
   ST1_Previo := 50.0;
   ST2_Previo := 60.0;
   ST2_Optimo := 82.0;
   SD1_Optimo := 25.0;
   ST1(1) := 0.0;

   -- Establecemos conexion logica lectura y escritura.
   -- Para evitar errores, antes de establecer conexion logica de escritura,
   -- crearemos el archivo de texto de salida
   Open(input, In_File, "input.txt");
   Create(output_data, Out_File, "data.txt");
   Create(output_error, Out_File, "alarm_log.txt");

  -- Estaremos leyendo el archivo de entrada
   while not End_Of_File(input) loop

      -- Seguimos leyendo los valores de entrada y los guardamos
      Get(input, k);
      Get(input, SR1(k));
      Get(input, ST4(k));
      Get(input, ST3(k));

      -- Calculamos los valores de SC1 y SC2.
      -- En la primera iteracion utilizaremos los valores previos a la simulacion de ST1 y ST2
      -- para calcular el valor de SC1. En el resto de la simulacion estaremos utilizando
      -- los valores generados en la iteracion anterior.
      if (k = 1) then
         SC1(k) := SC1_Optimo_F(ST1_Previo, ST2_Optimo, ST4(k), SR1(k), T_F(ST1_Previo, ST2_Optimo));
      else
         SC1(k) := SC1_Optimo_F(ST1(k-1), ST2_Optimo, ST4(k), SR1(k), T_F(ST1(k-1), ST2_Optimo));
      end if;

      SC2(k) := SC2_Optimo_F(ST2_Optimo, ST3(k), SD1_Optimo);

      -- Utilizamos la información obtenida para generar nueva informacion
      Simulacion(k, ST1_Previo, ST2_Previo, ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1, False);

      -- Mostramos en consola
      Visualizar_Pantalla(k, ST1(k), ST2(k), ST3(k), ST4(k), SC1(k), SC2(k), SR1(k), SD1(k), Alarma(ST2(k)));

      -- Escribimos en el archivo de salida
      Guardar_Datos(output_data, output_error, k, ST1(k), ST2(k), ST3(k), ST4(k), SC1(k), SC2(k), SR1(k), SD1(k), Alarma(ST2(k)));

   end loop;

   -- Como el archivo de entrada contiene caracteres finales no numericos, entonces debemos manejar estas situaciones.
   -- Caso contrario, el programa terminaria con lanzando una excepcion. La solucion al problema sera añadir algun comentario.
   -- En nuestro caso, un salto de linea
   exception
    when End_Error =>
        Put_Line("");

   -- Cerramos los flujos de datos respectivamente
   close(input);
   close(output_data);
   close(output_error);

end ejercicio_02;
