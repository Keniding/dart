import 'dart:io';

import '../model/Tarea.dart';

void agregarTarea() {
  final entrada = stdin;
  
  try {
    final archivo = File('./tareas.txt');

    if(archivo.existsSync()) {
      final contenido = archivo.readAsStringSync();

      print('Nombre de tarea');
      final nombre = entrada.readLineSync() ?? 'Tarea sin nombre'; // Tarea por defecto si null

      print('Descripción de tarea');
      final descripcion = entrada.readLineSync();

      final tarea = Tarea(nombre, descripcion: descripcion);
      archivo.writeAsStringSync(contenido + '\n' + tarea.toString());

      print("El contenido actualizado es: ${archivo.readAsStringSync()}");
    } else {
      print("El archivo es inexistente");
    }
  } catch (e) {
    print('Error al abrir el archivo: $e');
  }
}