class Persona{
  final String nombre;
  final String apellido;
  final int edad;
  final String nick;

  // Constructor
  Persona(
    this.nombre, // Obligatorio
    this.apellido, 
    this.edad,
    {this.nick = ''} //Valor(Parametro) opcional e inicializado vacio (Se debe inicializar)
    );
}

void main() {
  final Persona persona = Persona('Henry', 'Tarazona', 21);
  print(persona);
  print('Persona: nombre: ${persona.nombre}, apellido: ${persona.apellido}, edad: ${persona.edad}, nick: ${persona.nick}');

  print("----------------------------");

  final Persona personaConNick = Persona('Henry', 'Tarazona', 21, nick: 'Destroyer');
  print(personaConNick);
  print('Persona: nombre: ${personaConNick.nombre}, apellido: ${personaConNick.apellido}, edad: ${personaConNick.edad}, nick: ${personaConNick.nick}');

  
}