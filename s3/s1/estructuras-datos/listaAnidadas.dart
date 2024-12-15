void main() {
  // Lista de 2 dimensiones
  List<List<int>> numbers = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10]];
  print('Este es el calor del primer puntero y el segundo puntero: ${numbers[0][0]}');

  for(int i = 0; i < numbers.length; i++) { // Itera la primera lista
    for(int j = 0; j < numbers[i].length; j++) { // Itera la lista dentro de la lista q se itera al inicio
      print('Este es el valor de la lista en la posición ${i} y ${j}: ${numbers[i][j]}');
    }
  }
}

