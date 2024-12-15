void main() {
  // Funciones para listas, las cuales son objetos con propiedades(funciones)
  final nombres = ['Henry', 'Ana,', 'Pedro', 'Juan'];
  final edades = [25, 30, 35, 23];

  // Quitar dentro de listas 
  nombres.remove('Juan');
  edades.remove(30);

  nombres.forEach((element) => print('Nombres: $element'));
  edades.forEach((elemento) => print('Edades: $elemento'));
}