void main() {
  int contador = 0;
  for(int i = 0; i <5; i++) {
    for(int j = 0; j <10; j++) {
      contador++;
      if(contador %10 == 0) {
        continue;
        // Cuando son numeros divisibles por 10 se pasa al siguiente ciclo
        // Corte parcial
      }
      print('El valor del contador es: $contador');
    }
  }
}