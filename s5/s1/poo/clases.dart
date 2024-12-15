class Persona{
  final String nombre;
  final String apellido;
  final int edad;

  // Constructor
  Persona(
    this.nombre,
    this.apellido, 
    this.edad,
    );
}

void main() {
  final Persona persona = Persona('Henry', 'Tarazona', 21);
  print(persona);
  print('Persona: nombre: ${persona.nombre}, apellido: ${persona.apellido}, edad: ${persona.edad}');
}