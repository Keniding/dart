void main() {

  List<int> pares = [2, 4, 6, 8];
  List<int> impares = [1, 3, 5, 7];

  // Sin llaves dentro de la lista
  List<int> numerosOtraForma = [
    for(int i = 0; i < pares.length; i++) 
      pares[i], // Se agrega
    for(int j = 0; j < impares.length; j++)
      if(impares[j] > 5) // Condicional, si posición impares es mayor
        impares[j] // Agrega el valor
    ];
  print('Lista de numeros pares por for e impares filtradas por condicionales: $numerosOtraForma');

}