import 'implementacion/Usuario.dart';

void main() {
  // Herencia permite obtener metodos de una clase sin necesidad de instanciar
  Usuario usuario = Usuario('Henry Keniding', 'Tarazona Lazaro', 21, 'U20310552', 'Keniding', nick: 'Tenty')
  ..profesion = 'Ingeniero'
  ..mostrar()
  ..mostrarAfiliacion() // De mixin
  ..estudiar(); // De otro mixin

  print('Usuario valores especificos: ${usuario.id} y ${usuario.name}');
}