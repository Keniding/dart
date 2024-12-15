void main() {
  // Funciones para listas, las cuales son objetos con propiedades(funciones)
  final nombres = ['Henry', 'Ana,', 'Pedro'];
  final edades = [25, 30, 35];

  // Agregar en listas
  nombres.add('Juan');
  edades.add(40);

  nombres.forEach((element) => print('Nombres: $element'));
  edades.forEach((elemento) => print('Edades: $elemento'));
}