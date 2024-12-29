import 'EstadoTarea.dart';
import 'Proyecto.dart';
import 'SubTarea.dart';

class Tarea implements Proyecto {
  final String nombre;
  final String? descripcion;
  Estadotarea? estado;

  List<Subtarea> subtareas = [];

  Tarea(this.nombre, {this.descripcion = '', this.estado = Estadotarea.noRealizada});

  @override
  void culminarTarea() {
    estado = Estadotarea.realizada;
  }
  
  @override
  void postergarTarea() {
    estado = Estadotarea.postergada;
  }
  
  @override
  void realizarTarea() {
    estado = Estadotarea.realizada;
  }
  
  @override
  void cancelarTarea() {
    estado = Estadotarea.cancelada;
  }
  
  void agregarSubtarea(Subtarea subtarea) {
    subtareas.add(subtarea);
  }

  void eliminarSubtarea(int index) {
    subtareas.removeAt(index);
  }

  @override
  String toString() {
    return '$nombre|$descripcion|${estado?.name}';
  }

  static Tarea fromString(String cadena) {
    final atributos = cadena.split('|');
    if (atributos.length < 3) {
      throw FormatException('Formato inválido de tarea');
    }

    // Convertir el string del estado a enum
    final estadoStr = atributos[2].trim();
    final estado = Estadotarea.values.firstWhere(
      (e) => e.name.toLowerCase() == estadoStr.toLowerCase(),
      orElse: () => Estadotarea.noRealizada,
    );

    return Tarea(
      atributos[0].trim(),
      descripcion: atributos[1].trim(),
      estado: estado,
    );
  }
}
