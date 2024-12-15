class Persona{
  final String nombre;
  final String apellido;
  final int edad;
  final String nick;
  String? _profesion; 
  
  Persona(
    this.nombre,
    this.apellido, 
    this.edad,
    {this.nick = ''}
    );

    String? get profesion => _profesion;
    set profesion(String? profesion) {
      _profesion = profesion;
    }

    void mostrar() {
      print('Nombre: $nombre, Apellido: $apellido, Edad: $edad, Nick: $nick, Profesion: ${_profesion ?? 'No tiene'}');
    }
}