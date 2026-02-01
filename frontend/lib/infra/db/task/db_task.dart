import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'db_task.freezed.dart';
part 'db_task.g.dart';

@freezed
@HiveType(typeId: 1)
abstract class DbTask with _$DbTask {
  const factory DbTask({
    @HiveField(0) required String id,
    @HiveField(1) required String owner,
    @HiveField(2) required String title,
    @HiveField(3) required String? description,
    @HiveField(4) required int? order,
    @HiveField(5) required DateTime? datetime,
    @HiveField(6) required bool? isCompleted,
    @HiveField(7) required DateTime? createdAt,
    @HiveField(8) required DateTime? updatedAt,
  }) = _DbTask;
}
