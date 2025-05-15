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
  if (numero < 2) {
    return false;
  }
  for (int i = 2; i <= sqrt(numero).toInt(); i++) {
    // Si el número es divisible por 'i' (resto 0), entonces no es primo
    if (numero % i == 0) {
      return false;
    }
  }
  return true;
}
