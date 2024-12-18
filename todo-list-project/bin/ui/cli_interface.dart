import 'dart:io';
import '../models/task.dart';
import '../services/task_service.dart';
import '../utils/date_formatter.dart';
import '../utils/console_colors.dart';

class CliInterface {
  final TaskService _taskService;

  CliInterface(this._taskService);

  Future<void> start() async {
    print(ConsoleColors.header('\n¡Bienvenido a tu Gestor de Tareas!\n'));
    bool running = true;

    while (running) {
      _mostrarMenuPrincipal();
      String? opcion = stdin.readLineSync();

      switch (opcion) {
        case '1':
          await _agregarTarea();
          break;
        case '2':
          await _listarTareas();
          break;
        case '3':
          await _marcarTareaComoCompletada();
          break;
        case '4':
          await _eliminarTarea();
          break;
        case '5':
          await _filtrarTareasPorCategoria();
          break;
        case '6':
          await _filtrarTareasPorPrioridad();
          break;
        case '7':
          await _mostrarTareasVencidas();
          break;
        case '8':
          running = false;
          print(ConsoleColors.success('\n¡Gracias por usar el Gestor de Tareas!'));
          break;
        default:
          print(ConsoleColors.error('\nOpción no válida. Por favor, intente de nuevo.'));
      }
    }
  }

  void _mostrarMenuPrincipal() {
    print(ConsoleColors.header('\n=== MENÚ PRINCIPAL ==='));
    print(ConsoleColors.info('1. Agregar nueva tarea'));
    print(ConsoleColors.info('2. Listar todas las tareas'));
    print(ConsoleColors.info('3. Marcar tarea como completada'));
    print(ConsoleColors.info('4. Eliminar tarea'));
    print(ConsoleColors.info('5. Filtrar tareas por categoría'));
    print(ConsoleColors.info('6. Filtrar tareas por prioridad'));
    print(ConsoleColors.info('7. Mostrar tareas vencidas'));
    print(ConsoleColors.warning('8. Salir'));
    print(ConsoleColors.brightWhiteText('\nSeleccione una opción: '));
  }

  Future<void> _agregarTarea() async {
    print(ConsoleColors.header('\n=== AGREGAR NUEVA TAREA ==='));
    print(ConsoleColors.brightWhiteText('Título de la tarea:'));
    String? titulo = stdin.readLineSync();
    print(ConsoleColors.brightWhiteText('Descripción de la tarea:'));
    String? descripcion = stdin.readLineSync();
    print(ConsoleColors.brightWhiteText('Categoría (Trabajo/Personal/Estudio/Otro):'));
    String? categoria = stdin.readLineSync();
    print(ConsoleColors.brightWhiteText('Prioridad (1: Baja, 2: Media, 3: Alta):'));
    String? prioridadInput = stdin.readLineSync();
    TaskPriority prioridad;
    switch (prioridadInput) {
      case '1':
        prioridad = TaskPriority.low;
        break;
      case '3':
        prioridad = TaskPriority.high;
        break;
      default:
        prioridad = TaskPriority.medium;
    }

    print(ConsoleColors.brightWhiteText('Días para la fecha límite (número):'));
    String? diasInput = stdin.readLineSync();
    int dias = int.tryParse(diasInput ?? '') ?? 1;

    if (titulo != null && titulo.isNotEmpty) {
      final task = Task(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: titulo,
        description: descripcion ?? '',
        createdAt: DateTime.now(),
        dueDate: DateTime.now().add(Duration(days: dias)),
        priority: prioridad,
        category: categoria,
      );

      await _taskService.addTask(task);
      print(ConsoleColors.success('\n¡Tarea agregada exitosamente!'));
    } else {
      print(ConsoleColors.error('\nError: El título es obligatorio.'));
    }
  }

  Future<void> _listarTareas() async {
    print(ConsoleColors.header('\n=== LISTA DE TAREAS ==='));
    final tasks = await _taskService.getAllTasks();
    if (tasks.isEmpty) {
      print(ConsoleColors.warning('No hay tareas registradas.'));
      return;
    }
    for (var task in tasks) {
      _mostrarDetallesTarea(task);
    }
  }

  Future<void> _marcarTareaComoCompletada() async {
    print(ConsoleColors.header('\n=== MARCAR TAREA COMO COMPLETADA ==='));
    await _listarTareasNumeradas();
    print(ConsoleColors.brightWhiteText('\nIngrese el número de la tarea a completar:'));
    String? input = stdin.readLineSync();
    int? index = int.tryParse(input ?? '');
    final tasks = await _taskService.getAllTasks();

    if (index != null && index > 0 && index <= tasks.length) {
      var task = tasks[index - 1];
      task.isCompleted = true;
      await _taskService.updateTask(task);
      print(ConsoleColors.success('\n¡Tarea marcada como completada!'));
    } else {
      print(ConsoleColors.error('\nNúmero de tarea inválido.'));
    }
  }

  Future<void> _eliminarTarea() async {
    print(ConsoleColors.header('\n=== ELIMINAR TAREA ==='));
    await _listarTareasNumeradas();
    print(ConsoleColors.brightWhiteText('\nIngrese el número de la tarea a eliminar:'));
    String? input = stdin.readLineSync();
    int? index = int.tryParse(input ?? '');
    final tasks = await _taskService.getAllTasks();

    if (index != null && index > 0 && index <= tasks.length) {
      var task = tasks[index - 1];
      await _taskService.removeTask(task.id);
      print(ConsoleColors.success('\n¡Tarea eliminada exitosamente!'));
    } else {
      print(ConsoleColors.error('\nNúmero de tarea inválido.'));
    }
  }

  Future<void> _filtrarTareasPorCategoria() async {
    print(ConsoleColors.header('\n=== FILTRAR POR CATEGORÍA ==='));
    print(ConsoleColors.brightWhiteText('Ingrese la categoría:'));
    String? categoria = stdin.readLineSync();

    if (categoria != null && categoria.isNotEmpty) {
      final tasks = await _taskService.getTasksByCategory(categoria);
      if (tasks.isEmpty) {
        print(ConsoleColors.warning('\nNo hay tareas en esta categoría.'));
        return;
      }
      for (var task in tasks) {
        _mostrarDetallesTarea(task);
      }
    }
  }

  Future<void> _filtrarTareasPorPrioridad() async {
    print(ConsoleColors.header('\n=== FILTRAR POR PRIORIDAD ==='));
    print(ConsoleColors.brightWhiteText('Seleccione la prioridad (1: Baja, 2: Media, 3: Alta):'));
    String? input = stdin.readLineSync();
    TaskPriority prioridad;
    switch (input) {
      case '1':
        prioridad = TaskPriority.low;
        break;
      case '3':
        prioridad = TaskPriority.high;
        break;
      default:
        prioridad = TaskPriority.medium;
    }

    final tasks = await _taskService.getTasksByPriority(prioridad);
    if (tasks.isEmpty) {
      print(ConsoleColors.warning('\nNo hay tareas con esta prioridad.'));
      return;
    }
    for (var task in tasks) {
      _mostrarDetallesTarea(task);
    }
  }

  Future<void> _mostrarTareasVencidas() async {
    print(ConsoleColors.header('\n=== TAREAS VENCIDAS ==='));
    final tasks = await _taskService.getOverdueTasks();

    if (tasks.isEmpty) {
      print(ConsoleColors.success('No hay tareas vencidas.'));
      return;
    }
    for (var task in tasks) {
      _mostrarDetallesTarea(task);
    }
  }

  Future<void> _listarTareasNumeradas() async {
    final tasks = await _taskService.getAllTasks();
    if (tasks.isEmpty) {
      print(ConsoleColors.warning('No hay tareas registradas.'));
      return;
    }
    for (var i = 0; i < tasks.length; i++) {
      print(ConsoleColors.brightWhiteText('\n${i + 1}. ') +
          ConsoleColors.brightYellowText(tasks[i].title));
    }
  }

  void _mostrarDetallesTarea(Task task) {
    print(ConsoleColors.cyanText('\n---------------------------'));
    print(ConsoleColors.brightWhiteText('Título: ') +
        ConsoleColors.brightYellowText(task.title));
    print(ConsoleColors.brightWhiteText('Descripción: ') +
        ConsoleColors.brightYellowText(task.description));
    print(ConsoleColors.brightWhiteText('Estado: ') +
        (task.isCompleted
            ? ConsoleColors.success('Completada')
            : ConsoleColors.warning('Pendiente')));
    print(ConsoleColors.brightWhiteText('Categoría: ') +
        ConsoleColors.brightMagentaText(task.category ?? 'Sin categoría'));
    print(ConsoleColors.brightWhiteText('Prioridad: ') +
        _getPriorityColoredText(task.priority,
            task.priority.toString().split('.').last));
    print(ConsoleColors.brightWhiteText('Creada: ') +
        ConsoleColors.brightCyanText(DateFormatter.formatDateTime(task.createdAt)));
    if (task.dueDate != null) {
      final vencida = task.dueDate!.isBefore(DateTime.now());
      print(ConsoleColors.brightWhiteText('Fecha límite: ') +
          (vencida
              ? ConsoleColors.error(DateFormatter.formatDateTime(task.dueDate!))
              : ConsoleColors.brightCyanText(
                  DateFormatter.formatDateTime(task.dueDate!))));
    }
    print(ConsoleColors.cyanText('---------------------------'));
  }

  String _getPriorityColoredText(TaskPriority priority, String text) {
    switch (priority) {
      case TaskPriority.low:
        return ConsoleColors.success(text);
      case TaskPriority.medium:
        return ConsoleColors.warning(text);
      case TaskPriority.high:
        return ConsoleColors.error(text);
    }
  }
}
