void main() {
  // Seguridad nula
  // Aserción: "Confia en mi, no es o no sera null"
  late int numero;
  // Cantidad posiblemente null
  int? cantidad;
  // Numero puede ser nulo pero se asigna cantidad puede ser null, 
  // asi q definimos q numero no es null o no sera
  numero = cantidad!;
    print('El numero no es nulo: $numero');
}