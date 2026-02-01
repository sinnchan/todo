import 'package:todo/domain/settings/settings_values.dart';

class TaskSortSpec {
  const TaskSortSpec({
    required this.key,
    required this.direction,
  });

  final SortKey key;
  final SortDirection direction;
}
