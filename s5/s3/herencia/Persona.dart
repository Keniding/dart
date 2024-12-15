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

    void mostrar() {
      print('Nombre: $nombre, Apellido: $apellido, Edad: $edad, Nick: $nick, Profesion: ${_profesion ?? 'No tiene'}');
    }
}