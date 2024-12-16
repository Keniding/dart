import 'UsuarioGenericoMultiple.dart';

void main() {
  final usuario = Usuario<String, int>('Henry', 'Tenty', 21); // Generico multiple
  print('Nombre: ${usuario.nombre}, Nick: ${usuario.nick}, Edad: ${usuario.edad}');
}