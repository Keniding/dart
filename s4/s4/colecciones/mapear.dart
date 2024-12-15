void main() {
  // Funciones para listas, las cuales son objetos con propiedades(funciones)
  // Modificar valores y reservar en otra lista
  final numeros = [25, 30, 35, 23];

  numeros.forEach((element) => print('Numero: $element'));
  // Maperar, aunque modifiquemos no alteramos la lista inicial sino se crea una nueva lista
  final listaNueva = numeros.map((numero) => (numero + 1));
  listaNueva.forEach((element) => print('Numeros nuevos: $element'));
}