void main() {
  // Asi como enum definicion de alias
  Operacion operacion1 = suma;
  Operacion operacion2 = resta;

  final int resultado1 = operacion1(5, 6); // Con tipado, sin int seria dynamic
  final int resultado2 = operacion2(5, 8);

  print('Primer resultado es: $resultado1 y el segundo: $resultado2');
}

  int suma(int numero1, int numero2) {
    return numero1 + numero2;
  }

  int resta(int numero1, int numero2) {
    return numero1 - numero2;
  }

  // Para reduccion de codigo, asi ves que existe parametros similares
  typedef Operacion(int numero1, int numero2);