import 'dart:io';

import 'controller/AgregarTarea.dart';
import 'controller/VerTarea.dart';

void main() {
  // Proyecto -> Abstraccion
  // Tarea
  // Subtarea

  print('-------------------- BIENVENIDO --------------------');
  print('1. Agregar tarea');
  print('2. Ver tarea');
  print('3. Eliminar tarea');
  print('-------------------- SELECCIONE --------------------');

  final entrada = stdin; // Estandar de entrada de texto 
  final seleccion = entrada.readLineSync();

  switch(seleccion){
    case '1':
    print('-------------------- AGREGAR TAREA --------------------');
    print('Seleccionaste $seleccion');
    agregarTarea();
    break;
  case '2':
    print('-------------------- VER TAREA --------------------');
    print('Seleccionaste $seleccion');
    print('Que deseas ver');
    final nombreTarea = stdin.readLineSync();
    verTarea(nombreTarea ?? 'Sin tareas');
    break;
  case '3':
    print('-------------------- ELIMINAR TAREA --------------------');
    print('Seleccionaste $seleccion');
    break;
  default:
    print('-------------------- OPCION NO VALIDA --------------------');
    print('Seleccionaste $seleccion');
    break;
  }
}