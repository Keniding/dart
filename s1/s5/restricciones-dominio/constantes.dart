void main() {
  // Variables inmutables, no modificables
  const int decena = 10;
  print(decena);

//  decena = 20;
  // Error: no se puede asignar un valor a una variable constante

  // Otra forma de instanciar valores constantes
  final String nombre = 'Henry';
  print(nombre);

//  nombre = 'Keniding';
  // Error: no se puede asignar un valor a una variable final
}