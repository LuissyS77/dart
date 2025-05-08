import 'dart:io';
void main(){

print("Ingresa un numero: ");
int numero = int.parse(stdin.readLineSync()!);

int resultado = factorial(numero);
print("El factorial de $numero es: $resultado");

print("Ingresa un numero con finonacci: ");
int numero2 = int.parse(stdin.readLineSync()!);
resultado = fibonacci(numero2);
print("El fibonacci de $numero2 es: $resultado");
}

int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

int factorial(int numero) {
  if (numero == 0 || numero == 1) {
    return 1;
  } else {
    return numero*factorial(numero - 1);
  } 
}

int factorial2(int n){
  for (var i = 0; i < n ; i++) {
    return i * factorial2(i - 1);
  }
}
