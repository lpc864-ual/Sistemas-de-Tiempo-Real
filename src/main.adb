-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float, salvo excepciones

-- Definir paquete separado para los tipos de datos

with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, simulador, visualizacion, almacenamiento, seguridad, tipos;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, simulador, visualizacion, almacenamiento, seguridad, tipos;

procedure Main is

   -- Declaramos variables. La primera variable servira para establecer conexion
   -- logica de lectura, la siguiente servira como indice de indexacion, las
   -- siguientes serviran para guardar la informacion de los diferentes sensores
   -- y las dos ultimas serviran para establecer conexion logica de lectura. Al establecer
   -- conexion logica estamos estableciendo el sentido del flujo de dato. Una conexion
   -- logica de lectura establece del .txt al file, mientras que una conexion logica de
   -- escritura establece del file al .txt
   input : File_Type;
   k : Integer;
   ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Coleccion(0..14);
   output_data, output_error : File_Type;

begin

   -- Inicializamos ciertos valores. En concreto, estaremos inicializando ST1,
   -- ST2, SC1 y SC2 respectivamente
   ST1(0) := 50.0;
   ST2(0) := 60.0;
   SC1(0) := 15.0;
   SC2(0) := 450.0;

   -- Establecemos conexion logica lectura y escritura.
   -- Para evitar errores, antes de establecer conexion logica de escritura,
   -- crearemos el archivo de texto de salida
   Open(input, In_File, "input.txt");
   Create(output_data, Out_File, "data.txt");
   Create(output_error, Out_File, "alarm_log.txt");

  -- Estaremos leyendo el archivo de entrada
   while not End_Of_File(input) loop

      -- Leemos los valores de entrada y los guardamos
      Get(input, k);
      Get(input, SR1(k - 1));
      Get(input, ST4(k - 1));
      Get(input, ST3(k - 1));

      -- Utilizamos la información obtenida para generar nueva informacion
      Simulacion(k, ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1);

      -- Mostramos en consolas
      Visualizar_Pantalla(k, ST1(k-1), ST2(k-1), ST3(k-1), ST4(k-1), SC1(0), SC2(0), SR1(k-1), SD1(k-1), Alarma(ST2(k-1)));

      -- Escribimos en el archivo de salida
      Guardar_Datos(output_data, output_error, k, ST1(k-1), ST2(k-1), ST3(k-1), ST4(k-1), SC1(0), SC2(0), SR1(k-1), SD1(k-1), Alarma(ST2(k-1)));

  end loop;

   -- Cerramos los flujos de datos respectivamente
   close(input);
   close(output_data);
   close(output_error);

end Main;
