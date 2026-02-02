import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';

part 'task_entity.freezed.dart';
part 'task_entity.g.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required TaskId id,
    required UserId owner,
    required String title,
    required String? description,
    required DateTime? datetime,
    required bool? isCompleted,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}
