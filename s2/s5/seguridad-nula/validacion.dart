void main() {
  // Seguridad nula
  // Manejo de nulos
  String? nombre;
  String? nick;
  
  nombre = null; 
  print(nombre);
  nombre = nick;

  if(nombre == null) {
    print('El nombre es nulo');
  } else {
    print('El nombre no es nulo');
  }
}