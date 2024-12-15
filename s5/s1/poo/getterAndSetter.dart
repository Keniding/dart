class Persona{
  final String nombre;
  final String apellido;
  final int edad;
  final String nick;

  // Recordar separar la clase de main, ya que la privacidad ocurre a nivel de libreria
  // Y no de clase, lo que aca permite clase._x = clase.x
  String? _profesion; 
  // Puede ser nulo: ?
  // Privado, usado solo dentro de clase: _
  
  // Constructor
  Persona(
    this.nombre,
    this.apellido, 
    this.edad,
    {this.nick = ''}
    );

    // Retorna string por eso: ?
    String? get profesion => _profesion; // Get que retorna profesion
    set profesion(String? profesion) {
      _profesion = profesion;
    }
}

void main() {
  final Persona persona = Persona('Henry', 'Tarazona', 21);
  print(persona);
  print('Persona: nombre: ${persona.nombre}, apellido: ${persona.apellido}, edad: ${persona.edad}, nick: ${persona.nick}');

  print("----------------------------");

  final Persona personaConNick = Persona('Henry', 'Tarazona', 21, nick: 'Destroyer');
  print(personaConNick);
  print('Persona: nombre: ${personaConNick.nombre}, apellido: ${personaConNick.apellido}, edad: ${personaConNick.edad}, nick: ${personaConNick.nick}');

  persona.profesion = 'Ingeniero'; // Asignación de setter
  print('Esto es un atributo privado desde getter y setter: ${persona.profesion}'); // Mostrando con getter
}