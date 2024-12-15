void main() {
  List<int> pares = [2, 4, 6, 8];
  List<int> impares = [1, 3, 5, 7];

  List<int> numeros = pares + impares;
  print('Lista de numeros pares e impares: $numeros');

  // Con el simbolo de suma no puedes hacer esto
  List<int> numerosOtraForma = [...pares, ...impares, 9, 10];
  print('Lista de numeros pares e impares otra forma: $numerosOtraForma');
}