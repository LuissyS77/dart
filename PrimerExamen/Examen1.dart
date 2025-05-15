import 'dart:io';

// Clase Producto
class Producto {
  int id;
  String nombre;
  int cantidad;
  double precio;

  Producto({required this.id, required this.nombre, required this.cantidad, required this.precio});

  void mostrarInfo() {
    print('ID: $id | Nombre: $nombre | Cantidad: $cantidad | Precio: \$${precio.toStringAsFixed(2)}');
  }
}

int opcion = 0;
bool continuar = true;
int contadorId = 1; // contador global de IDs

void main() {
  List<Producto> productos = [];

  print("--------------------------------------------------");
  print("   Bienvenido al programa de Productos");
  print("--------------------------------------------------");

  while (continuar) {
    print("\nSeleccione una opción:");
    print("1. Agregar producto");
    print("2. Modificar producto");
    print("3. Eliminar producto");
    print("4. Mostrar productos");
    print("5. Salir");

try {
      opcion = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print("Por favor, ingrese un número válido.");
      continue; // Si hay un error, continuar con el ciclo
    }

    switch (opcion) {
      case 1:
        agregarProducto(productos);
        break;
      case 2:
        modificarProducto(productos);
        break;
      case 3:
        eliminarProducto(productos);
        break;
      case 4:
        mostrarProductos(productos);
        break;
      case 5:
        continuar = false;
        print("Hasta luego, vuelva pronto :)");
        break;
      default:
        print("Opción no válida.");
    }
  }
}

// Agregar producto
void agregarProducto(List<Producto> productos) {
String nombre = "";
  int cantidad = 0;
  double precio = 0.0;

  while (true){
    print("Ingrese el nombre del producto:");
     nombre = stdin.readLineSync()!;
     if (nombre.isEmpty) {
       print("El nombre no puede estar vacío.");
     } else {
       break; // Salir del ciclo si el nombre es válido
     }
  } 
    
while (true) {
    try {
      print("Ingrese la cantidad del producto:");
      cantidad = int.parse(stdin.readLineSync()!);
      if (cantidad > 0) {
        break; // Salir del ciclo si la cantidad es válida
      } else {
        print("La cantidad debe ser mayor a cero.");
      }
    } catch (e) {
      print("Por favor, ingrese un número válido.");
    }
  }

  while (true) {
    try {
      print("Ingrese el precio del producto:");
      precio = double.parse(stdin.readLineSync()!);
      if (precio > 0) {
        break; // Salir del ciclo si el precio es válido
      } else {
        print("El precio debe ser mayor a cero.");
      } 
    } catch (e) {
      print("Por favor, ingrese un número válido.");
    }
  }

  
  Producto nuevoProducto = Producto(id: contadorId, nombre: nombre, cantidad: cantidad, precio: precio);

  productos.add(nuevoProducto);
  print("Producto agregado correctamente:");
  nuevoProducto.mostrarInfo();

  contadorId++; // Incrementar ID global
}

// Mostrar productos
void mostrarProductos(List<Producto> productos) {
  if (productos.isEmpty) {
    print("⚠️ No hay productos registrados.");
  } else {
    print("\n📦 Lista de productos:");
    for (var producto in productos) {
      producto.mostrarInfo();
    }
  }
}
// Modificar producto
void modificarProducto(List<Producto> productos) {
  if (productos.isEmpty) {
    print("⚠️ No hay productos registrados.");
    return;
  }

  print("Ingrese el ID del producto a modificar:");
  int id = int.parse(stdin.readLineSync()!);

  Producto? productoAModificar = productos.firstWhere((producto) => producto.id == id);

  if (productoAModificar != null) {
    int opcionModificar = 0;
    print("Seleccione qué desea modificar:");
    print("1. Nombre");
    print("2. Cantidad");
    print("3. Precio");

    opcionModificar = int.parse(stdin.readLineSync()!);
    switch (opcionModificar) {
      case 1:
      String nuevoNombre = "";
      while (true) {
        print("Ingrese el nuevo nombre del producto:");
        nuevoNombre = stdin.readLineSync()!;
        if (nuevoNombre.isEmpty) {
          print("El nombre no puede estar vacío.");
        } else {
          break; // Salir del ciclo si el nombre es válido
        }
      }
        productoAModificar.nombre = nuevoNombre;
        break;
      case 2:
      int nuevaCantidad = 0;
      while (true) {
        try{
        print("Ingrese la nueva cantidad del producto:");
        nuevaCantidad = int.parse(stdin.readLineSync()!);
        if (nuevaCantidad > 0) {
          break; // Salir del ciclo si la cantidad es válida
        } else {
          print("La cantidad debe ser mayor a cero.");}
        }catch (e) {
          print("Por favor, ingrese un número válido.");
        }
      }
        productoAModificar.cantidad = nuevaCantidad;
        break;
      case 3:
        double nuevoPrecio = 0.0;
        while(true){
          try {
            print("Ingrese el nuevo precio del producto:");
            nuevoPrecio = double.parse(stdin.readLineSync()!);
            if (nuevoPrecio > 0) {
            break; // Salir del ciclo si el precio es válido
        } else {
          print("El precio debe ser mayor a cero.");
        }
        }catch (e) {
            print("Por favor, ingrese un número válido.");
          }
        }
        productoAModificar.precio = nuevoPrecio;
        print("Producto modificado correctamente:");
        productoAModificar.mostrarInfo();
        break;
      default:
        print("Opción no válida.");
  }
  } else {
    print("Producto no encontrado.");
  }
}
// Eliminar producto
void eliminarProducto(List<Producto> productos) {
  if (productos.isEmpty) {
    print("⚠️ No hay productos registrados.");
    return;
  }
  mostrarProductos(productos);
  int id = 0;
  while(true){
  try{
  print("Ingrese el ID del producto a eliminar:");
  id = int.parse(stdin.readLineSync()!);
  if (id < 0 || id == 0) {
    print("El ID no puede ser negativo ni cero.");
    }else {
      break; // Salir del ciclo si el ID es válido
    }
    // Salir del ciclo si el ID es válido
    }catch (e) {
      print("Por favor, ingrese un número válido.");
    }
  }
  Producto? productoAEliminar = productos.firstWhere((producto) => producto.id == id);
  if (productoAEliminar != null) {
    productos.remove(productoAEliminar);
    print("Producto eliminado correctamente.");
  } else {
    print("Producto no encontrado.");
  }
}