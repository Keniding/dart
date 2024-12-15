import 'Usuario.dart';

void main() {
  Usuario usuario = Usuario('Henry Keniding', 'Tarazona Lazaro', 21, 'U20310552', 'Keniding', nick: 'Tenty')
  ..profesion = 'Ingeniero'
  ..mostrar();

  print('Usuario valores especificos: ${usuario.id} y ${usuario.name}');
}