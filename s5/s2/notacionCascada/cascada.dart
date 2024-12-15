import 'Persona.dart';

void main() {
  Persona persona = Persona('Keniding', 'Lazaro', 21)
  ..profesion = 'Ingeniero' // Actualizar profesión mediante notación en cascada con (..)
  ..mostrar(); // Tambien podemos llamar a metodos dentro de la clase

  persona.mostrar();
}