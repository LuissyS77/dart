import 'dart:math';
void main () {
  int a = 5;
  String nombre = "Luiii";
  double pi = 3.14;
  bool d = true;
  var numero1 = 1;
  String? nombre2;
  int? numero2;

 print("Hola mundo $a $nombre $pi $d $numero1 $nombre2 $numero2");
List<String> lista = ["Hola", "mundo", "desde", "dart"];
  print(lista[0]);
  print(lista[1]);
  print(lista[2]);
  print(lista[3]);
  print("El tamaño de la lista es: ${lista.length}");
  print("El primer elemento de la lista es: ${lista.first}");
  print("El último elemento de la lista es: ${lista.last}");
  print("La lista en reversa es: ${lista.reversed}");
  print("La lista en orden alfabético es: ${lista..sort()}");
  print("La lista en orden alfabético inverso es: ${lista..sort((a, b) => b.compareTo(a))}");
  print("La lista en orden alfabético inverso es: ${lista..sort((a, b) => a.compareTo(b))}");

int raiz =25;
  print("La raíz cuadrada de $raiz es: ${sqrt(raiz)}");
  print("El valor absoluto de -$raiz es: ${raiz.abs()}");
  print("El valor máximo entre $a y $raiz es: ${max(a, raiz)}");
  print("El valor mínimo entre $a y $raiz es: ${min(a, raiz)}");
  print("El valor de pi es: ${pi}");
  print("El valor de pi redondeado a 2 decimales es: ${pi.toStringAsFixed(2)}");
  print("El valor de pi redondeado a 3 decimales es: ${pi.toStringAsFixed(3)}");
  print("El valor de pi redondeado a 4 decimales es: ${pi.toStringAsFixed(4)}");  
}