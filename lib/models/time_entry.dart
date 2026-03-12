import 'package:uuid/uuid.dart';

class TimeEntry {
  final String id;
  final double totalTime;
  final String projectId;
  final String taskId;
  final String notes;
  final DateTime date;

  TimeEntry({
    String? id,
    required this.totalTime,
    required this.projectId,
    required this.taskId,
    required this.notes,
    required this.date,
  }) : id = id ?? const Uuid().v4();

  Map<String, dynamic> toJson() => {
        'id': id,
        'totalTime': totalTime,
        'projectId': projectId,
        'taskId': taskId,
        'notes': notes,
        'date': date.toIso8601String(),
      };

  factory TimeEntry.fromJson(Map<String, dynamic> json) => TimeEntry(
        id: json['id'] as String,
        totalTime: (json['totalTime'] as num).toDouble(),
        projectId: json['projectId'] as String,
        taskId: json['taskId'] as String,
        notes: json['notes'] as String,
        date: DateTime.parse(json['date'] as String),
      );
}
