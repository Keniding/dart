import 'package:sqlite3/sqlite3.dart';
import 'package:uuid/uuid.dart'; // Importar el paquete uuid
import '../models/task.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._init();
  late final Database _database;

  DatabaseService._init() {
    _database = sqlite3.open('tasks.db'); // Abre o crea la base de datos
    _createDB();
  }

  void _createDB() {
    _database.execute(''' 
    CREATE TABLE IF NOT EXISTS tasks (
      id TEXT PRIMARY KEY,
      title TEXT NOT NULL,
      description TEXT,
      isCompleted INTEGER NOT NULL,
      createdAt TEXT NOT NULL,
      dueDate TEXT,
      priority TEXT NOT NULL,
      category TEXT
    )
    ''');
  }

  void insertTask(Task task) {
    final uuid = Uuid(); // Crear una instancia de Uuid

    // Generar un id único si el task no tiene uno
    final taskId = task.id.isEmpty ? uuid.v4() : task.id; 

    final statement = _database.prepare('''
      INSERT INTO tasks (id, title, description, isCompleted, createdAt, dueDate, priority, category)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?)
    ''');

    statement.execute([
      taskId, // Usar el id generado o el proporcionado
      task.title,
      task.description,
      task.isCompleted ? 1 : 0,
      task.createdAt.toIso8601String(),
      task.dueDate?.toIso8601String(),
      task.priority.toString(),
      task.category,
    ]);
    statement.dispose();
  }

  List<Task> getAllTasks() {
    final result = _database.select('SELECT * FROM tasks');
    return result.map((row) {
      return Task(
        id: row['id'] as String,
        title: row['title'] as String,
        description: row['description'] as String,
        isCompleted: row['isCompleted'] == 1,
        createdAt: DateTime.parse(row['createdAt'] as String),
        dueDate: row['dueDate'] != null ? DateTime.parse(row['dueDate'] as String) : null,
        priority: TaskPriority.values.firstWhere(
          (e) => e.toString() == row['priority'],
          orElse: () => TaskPriority.medium,
        ),
        category: row['category'] as String?,
      );
    }).toList();
  }

  void updateTask(Task task) {
    final statement = _database.prepare('''
      UPDATE tasks
      SET title = ?, description = ?, isCompleted = ?, createdAt = ?, dueDate = ?, priority = ?, category = ?
      WHERE id = ?
    ''');
    statement.execute([
      task.title,
      task.description,
      task.isCompleted ? 1 : 0,
      task.createdAt.toIso8601String(),
      task.dueDate?.toIso8601String(),
      task.priority.toString(),
      task.category,
      task.id,
    ]);
    statement.dispose();
  }

  void deleteTask(String id) {
    final statement = _database.prepare('''
      DELETE FROM tasks WHERE id = ?
    ''');
    statement.execute([id]);
    statement.dispose();
  }

  List<Task> getTasksByCategory(String category) {
    final result = _database.select('SELECT * FROM tasks WHERE category = ?', [category]);
    return result.map((row) {
      return Task(
        id: row['id'] as String,
        title: row['title'] as String,
        description: row['description'] as String,
        isCompleted: row['isCompleted'] == 1,
        createdAt: DateTime.parse(row['createdAt'] as String),
        dueDate: row['dueDate'] != null ? DateTime.parse(row['dueDate'] as String) : null,
        priority: TaskPriority.values.firstWhere(
          (e) => e.toString() == row['priority'],
          orElse: () => TaskPriority.medium,
        ),
        category: row['category'] as String?,
      );
    }).toList();
  }

  List<Task> getTasksByPriority(TaskPriority priority) {
    final result = _database.select('SELECT * FROM tasks WHERE priority = ?', [priority.toString()]);
    return result.map((row) {
      return Task(
        id: row['id'] as String,
        title: row['title'] as String,
        description: row['description'] as String,
        isCompleted: row['isCompleted'] == 1,
        createdAt: DateTime.parse(row['createdAt'] as String),
        dueDate: row['dueDate'] != null ? DateTime.parse(row['dueDate'] as String) : null,
        priority: TaskPriority.values.firstWhere(
          (e) => e.toString() == row['priority'],
          orElse: () => TaskPriority.medium,
        ),
        category: row['category'] as String?,
      );
    }).toList();
  }

  void close() {
    _database.dispose();
  }
}
