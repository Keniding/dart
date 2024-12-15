import 'implementacion/Usuario.dart';

void main() {
  // Herencia permite obtener el comportamiento de otra clase abstracta
  Usuario usuario = Usuario('Henry Keniding', 'Tarazona Lazaro', 21, 'U20310552', 'Keniding', nick: 'Tenty')
  ..profesion = 'Ingeniero'
  ..mostrar()
  ..compilar();

  print('Usuario valores especificos: ${usuario.id} y ${usuario.name}');
}