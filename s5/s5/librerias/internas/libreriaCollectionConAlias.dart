import 'dart:collection' as miColeccion; // Con ALIAS con AS
// En caso la libreria repita varias veces su nombre

void main() {
  miColeccion.Queue cola = miColeccion.Queue();
  cola.add(1);
  cola.add(2);
  cola.add(3);
  print(cola.first); // 1
}