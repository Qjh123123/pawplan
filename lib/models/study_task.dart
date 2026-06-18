class StudyTask {
  const StudyTask({
    required this.id,
    required this.title,
    required this.subject,
    required this.description,
    required this.deadline,
    required this.priority,
  });

  final String id;
  final String title;
  final String subject;
  final String description;
  final DateTime deadline;
  final String priority;

  StudyTask copyWith({
    String? id,
    String? title,
    String? subject,
    String? description,
    DateTime? deadline,
    String? priority,
  }) {
    return StudyTask(
      id: id ?? this.id,
      title: title ?? this.title,
      subject: subject ?? this.subject,
      description: description ?? this.description,
      deadline: deadline ?? this.deadline,
      priority: priority ?? this.priority,
    );
  }
}
