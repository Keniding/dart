void main() {
  // Funciones para listas, las cuales son objetos con propiedades(funciones)
  final nombres = ['Henry', 'Ana,', 'Pedro'];
  final edades = [25, 30, 35];

  nombres.forEach( // Iterar el array
    // Recive una funcion anonima
    (elemento) { // Almacena el valor recorido en esta varible
      print(elemento);
    }
  );

  print("----------");

  edades.forEach((elemento) => print(elemento));
}