import 'dart:io';

import '../model/Tarea.dart';

void eliminarTarea(String nombreTarea) {
  try {
    final archivo = File('./tareas.txt');

    if (archivo.existsSync()) {
      final contenido = archivo.readAsLinesSync()
          .where((linea) => linea.trim().isNotEmpty)
          .toList(); 
      
      bool tareaEliminada = false;
      for (var i = 0; i < contenido.length; i++) {
        try {
          final tarea = Tarea.fromString(contenido[i]);
          if (tarea.nombre == nombreTarea) {
            contenido.removeAt(i); 
            tareaEliminada = true;
            break;
          }
        } catch (e) {
          print('Error al procesar línea: ${contenido[i]}');
          print('Error: $e');
        }
      }

      if (tareaEliminada) {
        final texto = contenido.join('\n');
        archivo.writeAsStringSync(texto);
        print('Tarea "$nombreTarea" eliminada correctamente.');
      } else {
        print('No se encontró la tarea "$nombreTarea"');
      }
    } else {
      print("El archivo no existe");
    }
  } catch (e) {
    print('Error al eliminar la tarea: $e');
  }
}