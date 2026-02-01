import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/db/task/db_task.dart';
import 'package:todo/infra/db/task/tasks_dao.dart';
import 'package:todo/infra/repository/task_repository.dart';
import 'package:todo/ui/di/box_provider.dart';

part 'tasks_provider.g.dart';

const String _boxName = 'tasks';

@riverpod
Future<TaskRepository> taskRepository(Ref ref) async {
  return TaskRepositoryImpl(
    await ref.watch(tasksDaoProvider.future),
  );
}

@riverpod
Future<TasksDao> tasksDao(Ref ref) async {
  return TasksDao(
    await ref.watch(boxProvider<DbTask>(_boxName).future),
  );
}

@riverpod
Stream<List<TaskId>> tasks(Ref ref, UserId id) async* {
  final repo = await ref.watch(taskRepositoryProvider.future);
  yield* repo.getTasks(id);
}

@riverpod
Stream<Task> task(Ref ref, TaskId id) async* {
  final repo = await ref.watch(taskRepositoryProvider.future);
  yield* repo.getTask(id);
}
