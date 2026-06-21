import '../models/study_task.dart';

class TaskStorageService {
  static final DateTime _seedDate = DateTime(2026, 6, 22);

  static final List<StudyTask> _tasks = [
    StudyTask(
      id: '1',
      title: 'Finish mobile app UI',
      subject: 'DMT321',
      description: 'Prepare the first version of the assignment screens.',
      deadline: DateTime(2026, 6, 20),
      priority: 'High',
      isCompleted: false,
      createdAt: _seedDate,
      updatedAt: _seedDate,
    ),
    StudyTask(
      id: '2',
      title: 'Write CRUD explanation',
      subject: 'DMT321',
      description:
          'Explain insert, retrieve, update, and delete in the report.',
      deadline: DateTime(2026, 6, 22),
      priority: 'Medium',
      isCompleted: false,
      createdAt: _seedDate,
      updatedAt: _seedDate,
    ),
  ];

  List<StudyTask> getAllTasks() {
    return List.unmodifiable(_tasks);
  }

  void addTask(StudyTask task) {
    _tasks.add(task);
  }

  void updateTask(StudyTask updatedTask) {
    final index = _tasks.indexWhere((task) => task.id == updatedTask.id);
    if (index != -1) {
      _tasks[index] = updatedTask.copyWith(updatedAt: DateTime.now());
    }
  }

  void deleteTask(String id) {
    _tasks.removeWhere((task) => task.id == id);
  }
}
