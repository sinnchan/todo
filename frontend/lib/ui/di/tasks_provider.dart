import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/app/service/task_service.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/api/amplify/task/amplify_task_api.dart';
import 'package:todo/infra/api/task/task_api.dart';
import 'package:todo/infra/db/task/db_task.dart';
import 'package:todo/infra/db/task/tasks_dao.dart';
import 'package:todo/infra/repository/task_repository.dart';
import 'package:todo/ui/di/box_provider.dart';
import 'package:todo/ui/di/settings_providers.dart';

part 'tasks_provider.g.dart';

const String _boxName = 'tasks';

@riverpod
Future<TaskService> taskService(Ref ref) async {
  return TaskService(
    await ref.watch(taskRepositoryProvider.future),
    await ref.watch(userSettingsRepositoryProvider.future),
  );
}

@riverpod
Future<TaskRepository> taskRepository(Ref ref) async {
  return TaskRepositoryImpl(
    await ref.watch(tasksDaoProvider.future),
    ref.watch(taskApiProvider),
  );
}

@riverpod
TaskApi taskApi(Ref ref) {
  return AmplifyTaskApi();
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
  final settings = await ref.watch(userSettingsProvider(id).future);
  unawaited(repo.fetchTasks(userId: id, sortSpec: settings.sortSpec));

  yield* repo.getTasks(
    id,
    settings.sortSpec,
    showCompleted: settings.showCompleted,
  );
}

@riverpod
Stream<Task> task(Ref ref, TaskId id) async* {
  final repo = await ref.watch(taskRepositoryProvider.future);
  yield* repo.getTask(id);
}
