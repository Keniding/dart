import 'Usuario.dart';

void main() {
  final usuario = Usuario<String>('Henry', 'Tenty'); // Usuario tipo string, no puede agregar numeros u otro
  print(usuario.nombre);
}