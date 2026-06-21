class StudyTask {
  const StudyTask({
    required this.id,
    required this.title,
    required this.subject,
    required this.description,
    required this.deadline,
    required this.priority,
    required this.isCompleted,
    required this.createdAt,
    required this.updatedAt,
  });

  final String id;
  final String title;
  final String subject;
  final String description;
  final DateTime deadline;
  final String priority;
  final bool isCompleted;
  final DateTime createdAt;
  final DateTime updatedAt;

  StudyTask copyWith({
    String? id,
    String? title,
    String? subject,
    String? description,
    DateTime? deadline,
    String? priority,
    bool? isCompleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return StudyTask(
      id: id ?? this.id,
      title: title ?? this.title,
      subject: subject ?? this.subject,
      description: description ?? this.description,
      deadline: deadline ?? this.deadline,
      priority: priority ?? this.priority,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'title': title,
      'subject': subject,
      'description': description,
      'deadline': deadline.toIso8601String(),
      'priority': priority,
      'isCompleted': isCompleted ? 1 : 0,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  factory StudyTask.fromMap(Map<String, Object?> map) {
    return StudyTask(
      id: map['id'] as String,
      title: map['title'] as String,
      subject: map['subject'] as String,
      description: map['description'] as String,
      deadline: DateTime.parse(map['deadline'] as String),
      priority: map['priority'] as String,
      isCompleted: (map['isCompleted'] as int) == 1,
      createdAt: DateTime.parse(map['createdAt'] as String),
      updatedAt: DateTime.parse(map['updatedAt'] as String),
    );
  }
}
