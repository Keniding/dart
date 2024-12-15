void main() {
  // Retorna entero
  int sumar(int numero1, int numero2) { // Los valores pueden ser nulos : numero1? se debe validar dentro
    return numero1 + numero2;
  }

  // Invocación de la funcion
  print('La suma retornada es: ${sumar(5, 7)}');
}