import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/task/values.dart';
import 'package:todo/domain/user/values.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
abstract class Task with _$Task {
  const factory Task({
    required TaskId id,
    required UserId owner,
    required String? title,
    required String? description,
    required int? order,
    required DateTime? datetime,
    required bool? done,
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}
