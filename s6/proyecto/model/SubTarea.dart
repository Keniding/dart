import 'EstadoTarea.dart';
import 'Proyecto.dart';
import 'Tarea.dart';

class Subtarea extends Tarea implements Proyecto {
  Subtarea(
    String nombre, String? descripcion, Estadotarea? estado
  ) : super(nombre, descripcion: descripcion, estado: estado);
}