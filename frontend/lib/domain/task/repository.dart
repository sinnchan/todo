import 'package:todo/domain/task/entity.dart';
import 'package:todo/domain/task/values.dart';
import 'package:todo/domain/user/values.dart';

abstract interface class TaskRepository {
  Future<void> createTask(Task task);
  Future<void> updateTask(Task task);
  Future<void> deleteTask(TaskId id);
  Stream<Task> getTask(TaskId id);
  Stream<List<TaskId>> getTasks(UserId id);
}
