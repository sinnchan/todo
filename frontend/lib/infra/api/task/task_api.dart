import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';

class TaskApiPage {
  const TaskApiPage({
    required this.items,
    required this.nextToken,
  });

  final List<Task> items;
  final String? nextToken;
}

abstract interface class TaskApi {
  Future<TaskApiPage> fetchTasks({
    required UserId userId,
    required TaskSortSpec sortSpec,
    required int limit,
    String? nextToken,
  });

  Future<void> createTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(TaskId id);
}
