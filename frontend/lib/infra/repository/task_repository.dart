import 'dart:async';

import 'package:todo/app/share/logger.dart';
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
  Stream<List<TaskId>> getTasks(UserId id, TaskSortSpec sortSpec) {
    return _dao.getTasks(id, sortSpec);
  }

  @override
  Future<String?> fetchTasksPage({
    required UserId userId,
    required TaskSortSpec sortSpec,
    required int limit,
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

  Future<void> _syncCreate(Task task) async {
    try {
      await _api.createTask(task);
    } catch (e, st) {
      logger.w('failed to sync task create', e, st);
    }
  }

  Future<void> _syncUpdate(Task task) async {
    try {
      await _api.updateTask(task);
    } catch (e, st) {
      logger.w('failed to sync task update', e, st);
    }
  }

  Future<void> _syncDelete(TaskId id) async {
    try {
      await _api.deleteTask(id);
    } catch (e, st) {
      logger.w('failed to sync task delete', e, st);
    }
  }
}
