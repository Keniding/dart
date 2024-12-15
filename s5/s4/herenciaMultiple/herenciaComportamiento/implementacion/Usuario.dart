import '../clasesAbstractas/Programador.dart';
import '../clasesAbstractas/Tecnico.dart';
import 'Persona.dart';

// Si implementas mixins no puedes usar herencia de comportamiento
class Usuario 
extends Persona 
implements Programador, Tecnico { // Puedes heredar comportamiento de mas de 1 clase abstracta
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
  
  // Metodos de las clases abstractas
  @override
  void compilar() {
    print('Compilando...');
  }
  
  @override
  void programas() {

  }
  
  @override
  void reparacion() {

  }
  
  @override
  void soporte() {

  }

}