void main() {
  Operacion operacion1 = suma;
  Operacion operacion2 = resta;
  Operacion operacion3 = multiplicacion;

  final int resultado1 = operacion1(5, 6);
  final int resultado2 = operacion2(5, 8);
  final int resultado3 = operacion3(5, 2);

  print('Primer resultado suma es: $resultado1, el segundo resta: $resultado2 y el resultado 3 multiplicacion: $resultado3');
}

  int suma(int numero1, int numero2) => numero1 + numero2;
  int resta(numero1, numero2) => numero1 - numero2;
  int multiplicacion(numero1, numero2) => numero1 * numero2;

  typedef Operacion(int numero1, int numero2);