import 'dart:io';
void main(){
  print("--------------------------------------------------"); 
  print("   Bienvenido al programa de busqueda de estudiantes"); 
  print("--------------------------------------------------");
// Declaración de un Map (clave: String, valor: int)
Map<String, int> estudiantes = {
  'Juan': 25,
  'Ana': 30,
  'Luis': 28,
  'Maria': 22,
  'Pedro': 35,
  'Luissy': 19,
  'Wilson': 18
};

// Solicitar al usuario que ingrese el nombre del estudiante a buscar
print("Ingrese el nombre del estudiante a buscar: ");
String nombre = stdin.readLineSync()!;
print(buscador(nombre, estudiantes));

}
String buscador(String nombre, estudiantes) {
  if (!estudiantes.containsKey(nombre)) {
    return ('El estudiante no se encuentra en la lista.');
  } else {
    return("El nombre del estudiante es: $nombre y su edad es ${estudiantes[nombre]}");
  }
}

