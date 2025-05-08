import 'dart:io';
import 'dart:math';//importacion para pedir datos en consola
void main (){
//----------------------------------------------------------------------
int opcion; //declaracion de variable
bool continuar=true; //variable para continuar el ciclo

while (continuar){ //ciclo while para continuar el programa
  print("--------------------------------------------------"); //imprimir mensaje
  print("   Bienvenido al programa de ejercicios"); //imprimir mensaje
  print("--------------------------------------------------"); //imprimir mensaje
  print("  Seleccione una opcion: "); //imprimir mensaje
  print("");
  print("  1. Calcular la distancia recorrida por un vehiculo"); //imprimir mensaje
  print("  2. Calcular las notas de los estudiantes"); //imprimir mensaje
  print("  3. Calcular los puntos de un Equipo");
  print("  4. Calcular el Devengado de un Empleado.");
  print("  5. Calcular la hipotenusa.");
  print("  6. Cambiar de Celsius a Fahrenheit.");
  print("");
  print("--------------------------------------------------"); //imprimir mensaje
  print("                                   0. Salir"); 
  print("--------------------------------------------------"); //imprimir mensaje
  opcion=int.parse(stdin.readLineSync()!);

  switch(opcion){ //switch para elegir la opcion
    case 1: //opcion 1
      print("Ejercicio 1"); //imprimir mensaje
      double v , t , d;
      print("Ingrese la velocidad constante en (m/s): "); //imprimir mensaje
      v=double.parse(stdin.readLineSync()!); //leer un dato de tipo entero

      print("Ingrese el tiempo en (s) : "); 
      t=double.parse(stdin.readLineSync()!); //leer un dato de tipo entero

      d= v*t ; //suma de dos numeros
      print("La la distancia recorrida por el vehiculo es ${d} m "); //imprimir el resultado
    break; //salir del switch

    case 2: //opcion 2
    print("Ejercicio 2"); //imprimir mensaje
    double nota1, nota2, nota3, promedio; //declaracion de variables
    String nombre; //declaracion de variable
    print("Ingrese el nombre del estudiante: "); //imprimir mensaje
    nombre= (stdin.readLineSync()!); //leer un dato de tipo String
    print("Ingrese la nota 1: ");
    nota1=double.parse(stdin.readLineSync()!);
    print("Ingrese la nota 2: ");
    nota2=double.parse(stdin.readLineSync()!);
    print("Ingrese la nota 3: ");
    nota3=double.parse(stdin.readLineSync()!);
    promedio=(nota1+nota2+nota3)/3; //suma de tres numeros
    print("El promedio del semestre de $nombre es: ${promedio}"); //imprimir el resultado
    break; //salir del switch

    case 3:
    print("Ejercicio 3"); //imprimir mensaje
    String nombreEquipo; //declaracion de variable
    int PartidosGanados, PartidosPerdidos, PartidosEmpatados, PuntajeTotal; //declaracion de variables
    print("Ingrese el nombre del equipo: ");
    nombreEquipo= (stdin.readLineSync()!);

    print("Ingrese la cantidad de partidos ganados: ");
    PartidosGanados=int.parse(stdin.readLineSync()!); //leer un dato de tipo entero
    int puntosGanados =PartidosGanados*3;

    print("Ingrese la cantidad de partidos empatados: ");
    PartidosEmpatados=int.parse(stdin.readLineSync()!);
    int puntosEmpatados =PartidosEmpatados*1;

    print("Ingrese la cantidad de partidos perdidos: ");
    PartidosPerdidos=int.parse(stdin.readLineSync()!);
    int puntosPerdidos =PartidosPerdidos*0;

    PuntajeTotal= puntosGanados+puntosEmpatados+puntosPerdidos;
    print("El puntaje total del equipo $nombreEquipo es: ${PuntajeTotal}");
    print("Los partidos ganados son: ${PartidosGanados}");
    print("Los partidos empatados son: ${PartidosEmpatados}");
    print("Los partidos perdidos son: ${PartidosPerdidos}");
    break;

  case 4:
  print("Ejercicio 4"); //imprimir mensaje
  print("Ingrese el nombre del empleado: "); //imprimir mensaje
  String nombreEmpleado= (stdin.readLineSync()!); //leer un dato de tipo String
  double horasTrabajadas, valorHora, devengado;
  valorHora= 6189; //valor de la hora
  print("Ingrese la cantidad de horas trabajadas: "); 
  horasTrabajadas=double.parse(stdin.readLineSync()!); 
  devengado= horasTrabajadas*valorHora;
  print("El nombre del empleado es: ${nombreEmpleado}"); //imprimir el resultado
  print("La cantidad de horas trabajadas son: ${horasTrabajadas}"); //imprimir el resultado
  print("El devengado del empleado es: ${devengado}");
  break;

  case 5:
  print("Ejercicio 5"); //imprimir mensaje
  double cateto1, cateto2, hipotenusa; //declaracion de variables
  print("Ingrese el cateto 1: "); 
  cateto1=double.parse(stdin.readLineSync()!); //leer un dato de tipo entero
  print("Ingrese el cateto 2: ");
  cateto2=double.parse(stdin.readLineSync()!); //leer un dato de tipo entero
  hipotenusa= sqrt((cateto1*cateto1) + (cateto2*cateto2)); //calculo de la hipotenusa
  print("La hipotenusa es: ${hipotenusa.toStringAsFixed(2)}"); //imprimir el resultado
  break;

  case 6:
  print("Ejercicio 6"); //imprimir mensaje
  double celsius, fahrenheit; //declaracion de variables
  print("Ingrese la temperatura en Celsius: "); //imprimir mensaje
  celsius=double.parse(stdin.readLineSync()!); //leer un dato de tipo entero
  fahrenheit= (celsius*1.8)+32; //calculo de la temperatura en Fahrenheit
  print("La temperatura en Fahrenheit es: ${fahrenheit}"); //imprimir el resultado
  break;

  case 0: //opcion 3
  print("Gracias por usar el programa"); //imprimir mensaje
  print("Hasta luego <3"); //imprimir mensaje
  continuar=false; //salir del ciclo while
  break; //salir del switch

  default: //opcion por defecto
  print("Opcion no valida"); //imprimir mensaje

  }
} 
}
