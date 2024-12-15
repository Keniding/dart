import '../mixins/Afiliado.dart';
import '../mixins/Estudiante.dart';
import 'Persona.dart';

// Si implementas mixins no puedes usar herencia de comportamiento
class Usuario 
extends Persona 
with Afiliado, Estudiante {
  String id;
  String name;

  Usuario(
    String nombre,
    String apellido,
    int edad,
    this.id,
    this.name,
    {String nick = ''} 
  ) 
  : super(nombre, apellido, edad, nick: nick);

  void mostrar() {
    super.mostrar(); 
    print('Id: $id, Name: $name'); 
  }

  // No necesitas instanciar metodos de mixin
}