import 'dart:io';
void main(){

print("Ingresa un numero: ");
int numero = int.parse(stdin.readLineSync()!);

int resultado = factorial(numero);
print("El factorial de $numero es: $resultado");

print("Ingresa un numero con finonacci: ");   
int numero2 = int.parse(stdin.readLineSync()!);
int resultado2 = fibonacci(numero2);
print("El factorial con fibonacci de $numero2 es: $resultado2");

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

// int fibonacci(int n) {
//   if (n == 0) {
//     return 0;
//   } else if (n == 1) {
//     return 1;
//   } else {
//     return fibonacci(n - 1) + fibonacci(n - 2);
//   }
// }

// int factorial(int numero) {
//   if (numero == 0 || numero == 1) {
//     return 1;
//   } else {
//     return numero*factorial(numero - 1);
//   } 
// }
int factorial(int numero) {
    if (numero == 0 || numero == 1) {
        return 1;
    } else {
        return numero * factorial(numero - 1);
    }
}


