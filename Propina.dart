import 'dart:io'; //importar libreria de entrada y salida
void main(){
  print("--------------------------------------------------"); //imprimir mensaje
  print("   Bienvenido al programa de Propinas"); 
  print("--------------------------------------------------");
  print("Ingresa el monto de la cuenta: ");
  double cuenta = double.parse(stdin.readLineSync()!); 
  print("Ingresa el porcentaje de propina: ");
  double porcentaje = double.parse(stdin.readLineSync()!);
  double propina = (cuenta * porcentaje) / 100; 
  double total = cuenta + propina; 
  print("La propina es: \$${propina.toStringAsFixed(2)}"); 
  print("Ingrese la cantidad de personas: ");
  int Personas = int.parse(stdin.readLineSync()!);
  double dividirtotal = total / Personas;
  print("El total a pagar por cada persona es: \$${dividirtotal.toStringAsFixed(2)}");
}