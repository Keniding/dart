import '../models/task.dart';
import 'database_service.dart';

class TaskService {
  final DatabaseService _databaseService = DatabaseService.instance;

  Future<List<Task>> getAllTasks() async {
    return _databaseService.getAllTasks();
  }

  Future<void> addTask(Task task) async {
    _databaseService.insertTask(task);
  }

  Future<void> removeTask(String id) async {
    _databaseService.deleteTask(id);
  }

  Future<void> updateTask(Task updatedTask) async {
    _databaseService.updateTask(updatedTask);
  }

  Future<List<Task>> getTasksByCategory(String category) async {
    return _databaseService.getTasksByCategory(category);
  }

  Future<List<Task>> getTasksByPriority(TaskPriority priority) async {
    return _databaseService.getTasksByPriority(priority);
  }

  Future<List<Task>> getOverdueTasks() async {
    final now = DateTime.now();
    final tasks = _databaseService.getAllTasks();
    return tasks
        .where((task) =>
            !task.isCompleted &&
            task.dueDate != null &&
            task.dueDate!.isBefore(now))
        .toList();
  }
}
