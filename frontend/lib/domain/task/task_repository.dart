import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';

abstract interface class TaskRepository {
  Future<void> createTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(TaskId id);
  Stream<Task> getTask(TaskId id);
  Stream<List<TaskId>> getTasks(
    UserId id,
    TaskSortSpec sortSpec, {
    required bool showCompleted,
  });
  Future<String?> fetchTasksPage({
    required UserId userId,
    required TaskSortSpec sortSpec,
    required int limit,
    String? nextToken,
  });
  Future<void> fetchTasks({
    required UserId userId,
    required TaskSortSpec sortSpec,
  });
}
