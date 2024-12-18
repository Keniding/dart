// import 'package:uuid/uuid.dart';
// import 'models/task.dart';
import 'services/task_service.dart';
import 'ui/cli_interface.dart';

void main() {
  final taskService = TaskService();

  // final uuid = Uuid();

  /*
  // Crear tareas de ejemplo
  final task1 = Task(
    id: uuid.v4(),  // Generar un ID único
    title: 'Completar informe',
    description: 'Finalizar el informe mensual de ventas',
    createdAt: DateTime.now(),
    dueDate: DateTime.now().add(Duration(days: 2)),
    priority: TaskPriority.high,
    category: 'Trabajo',
  );

  final task2 = Task(
    id: uuid.v4(),  // Generar un ID único
    title: 'Comprar víveres',
    description: 'Hacer las compras de la semana',
    createdAt: DateTime.now(),
    dueDate: DateTime.now().add(Duration(days: 1)),
    priority: TaskPriority.medium,
    category: 'Personal',
  );
  // Agregar tareas
  taskService.addTask(task1);
  taskService.addTask(task2);
   */


  final cli = CliInterface(taskService);
  cli.start();
}
