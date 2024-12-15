void main() {
  // Seguridad nula
  // String nombre = null;
  // print(nombre); // No se puede llamar a un método en null

  String? nombre;
  nombre = null; // Se puede agregar validacion nula con "?"
  print(nombre);

  nombre = 'Henry';
  print(nombre);
}