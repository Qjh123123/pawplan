import 'package:flutter/material.dart';

import '../models/study_task.dart';
import '../services/task_storage_service.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen({super.key});

  static const routeName = '/feature';

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  final TaskStorageService _storageService = TaskStorageService();
  late List<StudyTask> _tasks;

  @override
  void initState() {
    super.initState();
    _tasks = _storageService.getAllTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Study Tasks')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _tasks.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final task = _tasks[index];
          return Card(
            child: ListTile(
              title: Text(task.title),
              subtitle: Text('${task.subject} - ${task.priority} priority'),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: () {
                  setState(() {
                    _storageService.deleteTask(task.id);
                    _tasks = _storageService.getAllTasks();
                  });
                },
              ),
              onTap: () {},
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _storageService.addTask(
              StudyTask(
                id: DateTime.now().millisecondsSinceEpoch.toString(),
                title: 'New study task',
                subject: 'Subject',
                description: 'Member B/C/D can replace this with real forms.',
                deadline: DateTime.now(),
                priority: 'Medium',
                isCompleted: false,
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
              ),
            );
            _tasks = _storageService.getAllTasks();
          });
        },
        icon: const Icon(Icons.add),
        label: const Text('Add'),
      ),
    );
  }
}
