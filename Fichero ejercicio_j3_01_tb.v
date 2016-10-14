//-- Fichero ejercicio_j3_01_tb.v
//-- Modulo para el test bench
module ejercicio_j3_01_tb;

//-- Cable para conectar al pin de salida de setbit
//-- Le podemos dar CUALQUIER nombre. Pero le llamamos A (igual que el pin de setbit)
wire A;

//-- Colocar el componente (se denomina "Instanciar") y
//-- Conectar en el pin A el cable A
ejercicio_j3_01 SB1 (
 .v7df330 (A)
 //.A (v7df330)
);

//-- Comenzamos las pruebas (bloque de comprobacion)
initial begin

    //-- Definir el fichero donde volcar los datos
    $dumpfile("ejercicio_j3_01_tb.vcd");

    //-- Volcar todos los datos a ese fichero (al finalizar la simulacion)
    $dumpvars(0, ejercicio_j3_01_tb);

    //-- Pasadas 10 unidades de tiempo comprobamos si el cable está a '1'
    //-- En caso de no estar a 1, se informa del problema, pero la
    //-- simulacion no se detiene
    # 10 if (A != 1)
           $display("---->¡ERROR! Salida no esta a 1");
         else
           $display("Componente ok!");

  //-- Terminar la simulacion tras 10 unidades de tiempo desde la comprobacion
  # 10 $finish;
end
endmodule