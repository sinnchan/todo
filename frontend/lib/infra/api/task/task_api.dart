import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/api/amplify/gen/models/Task.dart' as api;

class TaskApiPage {
  const TaskApiPage({
    required this.items,
    required this.nextToken,
  });

  final List<api.Task> items;
  final String? nextToken;
}

abstract interface class TaskApi {
  Future<TaskApiPage> fetchTasks({
    required UserId userId,
    required TaskSortSpec sortSpec,
    required int limit,
    String? nextToken,
  });

  Future<void> createTask(api.Task task);
  Future<void> updateTask(api.Task task);
  Future<void> deleteTask(String id);
}
