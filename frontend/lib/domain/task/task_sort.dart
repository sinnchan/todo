import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/settings/settings_values.dart';

part 'task_sort.freezed.dart';
part 'task_sort.g.dart';

@freezed
abstract class TaskSortSpec with _$TaskSortSpec {
  const factory TaskSortSpec({
    required SortKey key,
    required SortDirection direction,
  }) = _TaskSortSpec;

  factory TaskSortSpec.fromJson(Map<String, Object?> json) =>
      _$TaskSortSpecFromJson(json);
}
