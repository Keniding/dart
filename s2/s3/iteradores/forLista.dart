void main() {
  List<String> nombres = [
    "Juan",
    "Pedro",
    "Ana",
    "Luis",
    "Maria",
  ];

  for(int i = 0; i < nombres.length; i++) {
    print('El numero del contador es: $i y el valor ${nombres[i]}');
  }
}