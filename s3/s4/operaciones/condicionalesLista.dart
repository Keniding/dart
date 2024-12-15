void main() {

  List<int> pares = [2, 4, 6, 8];
  List<int> impares = [1, 3, 5, 7];

  int decena = 10;

  // Sin llaves dentro de la lista
  List<int> numerosOtraForma = [...pares, if(decena%2 == 0) ...impares, 9, 10];
  print('Lista de numeros pares e impares otra forma: $numerosOtraForma');

}