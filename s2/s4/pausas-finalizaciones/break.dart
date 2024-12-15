void main() {
  int contador = 0;
  for(int i = 0; i <5; i++) {
    for(int j = 0; j <10; j++) {
      contador++;
      if(contador > 30) {
        break;
        // Cuando el numero es mayor a 30 corte
        // Corte total
      }
      print('El valor del contador es: $contador');
    }
  }
}