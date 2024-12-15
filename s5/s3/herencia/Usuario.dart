import 'Persona.dart';

// Usuario va heredar persona es decir es persona tambien
class Usuario extends Persona {
  String id;
  String name;

  Usuario(
    // Definimos Atributos de clase padre
    String nombre,
    String apellido,
    int edad,

    this.id, // Valores propios de Usuaro
    this.name,

    {String nick = ''} // Definimos el atributo opcional del super

    ) : super(nombre, apellido, edad,  // Agregamos los paramentro a la clase padre
    nick: nick); // Asi mismo pasamos relacionamos el nick
    // Acceso a constructor del padre con super

    void mostrar() {
      super.mostrar(); // Llamamos al mostrar del padre
      print('Id: $id, Name: $name'); // Creamos el print de los atributos de Usuario
    }
}