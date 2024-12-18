enum TaskPriority { low, medium, high }

class Task {
  final String id;
  String title;
  String description;
  bool isCompleted;
  DateTime createdAt;
  DateTime? dueDate;
  TaskPriority priority;
  String? category;

  Task({
    required this.id,
    required this.title,
    required this.description,
    this.isCompleted = false,
    required this.createdAt,
    this.dueDate,
    this.priority = TaskPriority.medium,
    this.category,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'isCompleted': isCompleted,
      'createdAt': createdAt.toIso8601String(),
      'dueDate': dueDate?.toIso8601String(),
      'priority': priority.toString(),
      'category': category,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      isCompleted: map['isCompleted'],
      createdAt: DateTime.parse(map['createdAt']),
      dueDate: map['dueDate'] != null ? DateTime.parse(map['dueDate']) : null,
      priority: TaskPriority.values.firstWhere(
        (e) => e.toString() == map['priority'],
        orElse: () => TaskPriority.medium,
      ),
      category: map['category'],
    );
  }
}
