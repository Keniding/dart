void main() {

  List<int> pares = [2, 4, 6, 8];
  List<int> impares = [1, 3, 5, 7];
  List<int> todos = pares + impares;
  print(todos);

  // Sin llaves dentro de la lista
  List<int> numerosOtraForma = [for(int i = 0; i < pares.length; i++) pares[i]];
  print('Lista de numeros pares por for: $numerosOtraForma');

}