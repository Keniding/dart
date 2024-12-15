void main() {
  // Funciones para listas, las cuales son objetos con propiedades(funciones)
  final numeros = [25, 30, 32, 23]; // Tipado dinamico

  numeros.forEach((element) => print('Numero: $element'));
  // Filtrar
  final listaNueva = numeros.where((numero) => (numero%5 == 0));
  print('-------------------------');
  listaNueva.forEach((element) => print('Numeros filtrados por condicion: $element'));
}