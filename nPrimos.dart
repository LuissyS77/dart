import 'dart:io';
import 'dart:math';//importacion para pedir datos en consola
void main(){
  List<int> primos = [];
  List<int> noPrimos = [];

print("Ingresa la cantidad de numero que vas agregar: ");
  int cantidadNumeros= int.parse(stdin.readLineSync()!);
  for (int i = 0; i < cantidadNumeros; i++) {
    print("Ingresa un numero: ");
    int numero = int.parse(stdin.readLineSync()!);
    if (esPrimo(numero)) {
      primos.add(numero);
    } else {
      noPrimos.add(numero);
    }
  }
  print("Los numeros primos son: $primos");
  print("Los numeros no primos son: $noPrimos");

}

//funcion para calcular si un numero es primo o no
bool esPrimo(int numero) {
  // Función que devuelve true si 'numero' es primo, false en caso contrario.
  // Verifica si el número es menor que 2 (0 y 1 no son primos)
  if (numero < 2) {
    // Si es menor que 2, devuelve false porque no es primo
    return false;
  }

  // Bucle para verificar si el número tiene divisores entre 2 y la raíz cuadrada de 'numero'
  for (int i = 2; i <= sqrt(numero).toInt(); i++) {
    // Si el número es divisible por 'i' (resto 0), entonces no es primo
    if (numero % i == 0) {
      return false;
    }
  }

  // Si no se encontraron divisores, el número es primo
  return true;
}
