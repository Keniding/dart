void main() {
  Set<String> paises = {
    "Argentina",
    "Brasil",
    "Chile",
    "Colombia",
    "Ecuador",
    "Peru",
    "Uruguay",
  };
  List<String> paisesLista = paises.toList();
  print(paisesLista);

  paisesLista.add('Peru'); // En listas puedes agregar duplicados
  print(paisesLista);

  print('Los paises unicos son: ${paisesLista.toSet()}'); // Valores unicos
}