import 'dart:io'; //importar libreria de entrada y salida
void main(){
  print("--------------------------------------------------"); 
  print("   Bienvenido al programa de Propinas"); 
  print("--------------------------------------------------");
  
  double cuenta=0;
  double porcentaje=0; //declaracion de variables

  do {
    try{
      print("Ingresa el monto de la cuenta: ");
      cuenta = double.parse(stdin.readLineSync()!);
      if (cuenta <0 || cuenta == 0) { //validar que el monto de la cuenta no sea negativo o cero
      print("El monto de la cuenta no puede ser negativo o cero.");
    }   
  }catch(e){
    print("Error: $e"); 
  }
  } while (cuenta <0 || cuenta == 0); //validar que el monto de la cuenta no sea negativo o cero

bool continuar = true; //variable para continuar el ciclo

while (continuar){
  try {
    print("Ingresa el porcentaje de propina: ");
    porcentaje = double.parse(stdin.readLineSync()!);
    if(porcentaje >=0){
      continuar = false; //salir del ciclo
    } else {
      print("El porcentaje de propina no puede ser negativo.");
    }
  } catch (e) {
    print("Error: $e"); //imprimir error
  }
}
  double propina = (cuenta * porcentaje) / 100; 
  double total = cuenta + propina; 
  print("La propina es: \$${propina.toStringAsFixed(2)}");

  bool continuar2 = true; //variable para continuar el ciclo
  int Personas = 0; //declaracion de variable

  while(continuar2){
    try {
      print("Ingrese la cantidad de personas: ");
      Personas = int.parse(stdin.readLineSync()!);
      if (Personas > 0) {
        continuar2 = false; 
      } else {
        print("La cantidad de personas no puede ser menor o igual a cero.");
      }
    } catch (e) {
     print("Error: $e"); 
    }
  }
  double dividirtotal = total / Personas;
  print("El total a pagar por cada persona es: \$${dividirtotal.toStringAsFixed(2)}");
}