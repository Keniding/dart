void main() {
  // Soluciona la mutabilidad de maps, esto no permite modificar los valores
  // Estructura con valores directos sin claves
  // No permite valores duplicados (Que si pasaba en listas)
  // Valores unicos, si ya existe no se puede agregar
  Set paises = {
    "España",
    "Francia",
    "Alemania",
    "Italia",
    "Portugal",
  };

  print('Estos son paises: $paises');

  // Validar si es vacio la estructura: isEmpty
  paises.add('Argentina');
  paises.add('Argentina');
  paises.add('Argentina'); // Solo lo guarda 1 vez
  print('Estos son paises: $paises');

  paises.remove('Italia');
  print('Estos son paises: $paises');
}