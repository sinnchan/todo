import 'dart:async';

import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/api/task/task_api.dart';
import 'package:todo/infra/db/task/tasks_dao.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._dao, this._api);

  final TasksDao _dao;
  final TaskApi _api;

  @override
  Future<void> createTask(Task task) async {
    await _dao.createTask(task);
    unawaited(_syncCreate(task));
  }

  @override
  Future<void> deleteTask(TaskId id) async {
    await _dao.deleteTask(id);
    unawaited(_syncDelete(id));
  }

  @override
  Future<void> updateTask(Task task) async {
    await _dao.updateTask(task);
    unawaited(_syncUpdate(task));
  }

  @override
  Stream<Task> getTask(TaskId id) {
    return _dao.getTask(id);
  }

  @override
  Stream<List<TaskId>> getTasks(
    UserId id,
    TaskSortSpec sortSpec, {
    required bool showCompleted,
  }) {
    return _dao.getTasks(id, sortSpec, showCompleted: showCompleted);
  }

  @override
  Future<String?> fetchTasksPage({
    required UserId userId,
    required TaskSortSpec sortSpec,
    int limit = 100,
    String? nextToken,
  }) async {
    final page = await _api.fetchTasks(
      userId: userId,
      sortSpec: sortSpec,
      limit: limit,
      nextToken: nextToken,
    );
    if (page.items.isNotEmpty) {
      await _dao.upsertTasks(page.items);
    }
    return page.nextToken;
  }

  @override
  Future<void> fetchTasks({
    required UserId userId,
    required TaskSortSpec sortSpec,
  }) async {
    String? token;
    for (var i = 1; i <= 10; i++) {
      token = await fetchTasksPage(
        userId: userId,
        sortSpec: sortSpec,
        nextToken: token,
      );
      if (token == null) break;
    }
  }

  Future<void> _syncCreate(Task task) async {
    try {
      await _api.createTask(task);
    } catch (e, st) {
      Zone.current.handleUncaughtError(e, st);
    }
  }

  Future<void> _syncUpdate(Task task) async {
    try {
      await _api.updateTask(task);
    } catch (e, st) {
      Zone.current.handleUncaughtError(e, st);
    }
  }

  Future<void> _syncDelete(TaskId id) async {
    try {
      await _api.deleteTask(id);
    } catch (e, st) {
      Zone.current.handleUncaughtError(e, st);
    }
  }
}
