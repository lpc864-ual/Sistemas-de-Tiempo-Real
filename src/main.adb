-- Para evitar problemas al trabajar con tipos, entonces siempre estaremos
-- trabajando con datos de tipo float, salvo excepciones

with Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, simulador;
use Ada.Text_IO, Ada.Float_Text_IO, ADA.Integer_Text_IO, simulador;

procedure Main is

   -- Declaramos variables. La primera variable servira para establecer conexion
   -- logica de lectura, la siguiente servira como indice de indexacion, las
   -- siguientes serviran para guardar la informacion de los diferentes sensores
   -- y la ultima servira para establecer conexion logica de lectura. Al establecer
   -- conexion logica estamos estableciendo el sentido del flujo de dato. Una conexion
   -- logica de lectura establece del .txt al file, mientras que una conexion logica de
   -- escritura establece del file al .txt
   input : File_Type;
   k : Integer;
   ST1, ST2, ST3, ST4, SC1, SC2, SR1, SD1 : Coleccion(0..14);
   output : File_Type;

begin

   -- Inicializamos ciertos valores. En concreto, estaremos inicializando ST1,
   -- ST2, SC1 y SC2 respectivamente
   ST1(0) := 50.0;
   ST2(0) := 50.0;
   SC1(0) := 15.0;
   SC2(0) := 450.0;

   --  ST1(0) := 50.0, 3, 3, 0; -- Asi con los demas para quitarnos la parte notacion cientifica (3 parte entera, 3 parte decimal y 0 exponente) hacerlo con put_line

   -- Establecemos conexion logica lectura y escritura.
   -- Para evitar errores, antes de establecer conexion logica de escritura,
   -- crearemos el archivo de texto de salida
   Open(input, In_File, "input.txt");
   Create(output, Out_File, "data.txt");

    -- Mostramos en consola
   Put_Line(" K       ST1       ST2       ST3       ST4       SC1       SC2       SR1       SD1");

   -- Escribimos en el archivo de salida
   Put_Line(output,(" K       ST1       ST2       ST3       ST4       SC1       SC2       SR1       SD1"));

  -- Estaremos leyendo el archivo de entrada
   while not End_Of_File(input) loop

      -- Leemos los valores de entrada y los guardamos
      Get(input, k);
      Get(input, SR1(k - 1));
      Get(input, ST4(k - 1));
      Get(input, ST3(k - 1));

      -- Utilizamos la información obtenida para generar nueva informacion
      ST1(k - 1) := ST1_F(ST2(k - 1));
      ST2(k - 1) := ST2_F(ST1(k - 1), ST4(k - 1), SC1(k - 1), SR1(k - 1), T_F(ST1(k - 1), ST2(K - 1)));
      SD1(k - 1) := SD1_F(ST2(k - 1), ST3(k -1) , SC2(k - 1));

      -- Mostramos en consola
      Put(Integer'Image(k));
      Put("     ");
      Put(ST1(k-1), 3, 2, 0);
      Put("    ");
      Put(ST2(k-1), 3, 2, 0);
      Put("    ");
      Put(ST3(k-1), 3, 2, 0);
      Put("    ");
      Put(ST4(k-1), 3, 2, 0);
      Put("    ");
      Put(SC1(k-1), 3, 2, 0);
      Put("    ");
      Put(SC2(k-1), 3, 2, 0);
      Put("    ");
      Put(SR1(k-1), 3, 2, 0);
      Put("    ");
      Put(SD1(k-1), 3, 2, 0);
      Put_Line("");

      -- Escribimos en el archivo de salida
      Put(output, Integer'Image(k));
      Put(output, "     ");
      Put(output, ST1(k-1), 3, 2, 0);
      Put(output, "    ");
      Put(output, ST2(k-1), 3, 2, 0);
      Put(output, "    ");
      Put(output, ST3(k-1), 3, 2, 0);
      Put(output, "    ");
      Put(output, ST4(k-1), 3, 2, 0);
      Put(output, "    ");
      Put(output, SC1(k-1), 3, 2, 0);
      Put(output, "    ");
      Put(output, SC2(k-1), 3, 2, 0);
      Put(output, "    ");
      Put(output, SR1(k-1), 3, 2, 0);
      Put(output, "    ");
      Put(output, SD1(k-1), 3, 2, 0);
      Put_Line(output, "");

  end loop;

   -- Cerramos los flujos de datos respectivamente
   close(input);
   close(output);

end Main;
