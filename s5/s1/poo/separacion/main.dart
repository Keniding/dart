import 'Persona.dart';

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