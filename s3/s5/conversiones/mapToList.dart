void main() {
  Map<String, int> edades = {
    'Juan': 25,
    'Maria': 30,
    'Pedro': 35,
    'Henry': 21
  };

  // De Map a lista, lista de llaves y lista de valores
  print('Las llaves son: ${edades.keys.toList()}');
  print('Los valores son: ${edades.values.toList()}');
}