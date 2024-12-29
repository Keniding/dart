import '../model/Tarea.dart';
import 'dart:io';

void verTarea(String nombreTarea) {
  try {
    final archivo = File('./tareas.txt');

    if (archivo.existsSync()) {
      final contenido = archivo.readAsLinesSync()
          .where((linea) => linea.trim().isNotEmpty); // Ignorar líneas vacías
      
      print('Buscando tarea: "$nombreTarea"');
      
      for (var linea in contenido) {
        try {
          final tarea = Tarea.fromString(linea);
          if (tarea.nombre == nombreTarea) {
            print('Tarea encontrada:');
            print('Nombre: ${tarea.nombre}');
            print('Descripción: ${tarea.descripcion}');
            print('Estado: ${tarea.estado?.name}');
            return;
          }
        } catch (e) {
          print('Error al procesar línea: $linea');
          print('Error: $e');
        }
      }
      
      print('No se encontró la tarea "$nombreTarea"');
    } else {
      print("El archivo no existe");
    }
  } catch (e) {
    print('Error al abrir el archivo: $e');
  }
}
