import 'dart:async';

import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/api/task/task_api.dart';
import 'package:todo/infra/api/amplify/task/amplify_task_mapper.dart';
import 'package:todo/infra/db/task/db_task_mapper.dart';
import 'package:todo/infra/db/task/tasks_dao.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(
    this._dao,
    this._api, {
    DbTaskMapper? dbMapper,
    AmplifyTaskMapper? apiMapper,
  })  : _dbMapper = dbMapper ?? const DbTaskMapper(),
        _apiMapper = apiMapper ?? const AmplifyTaskMapper();

  final TasksDao _dao;
  final TaskApi _api;
  final DbTaskMapper _dbMapper;
  final AmplifyTaskMapper _apiMapper;

  @override
  Future<void> createTask(Task task) async {
    await _dao.createTask(_dbMapper.fromDomain(task));
    unawaited(_syncCreate(task));
  }

  @override
  Future<void> deleteTask(TaskId id) async {
    await _dao.deleteTask(id.id);
    unawaited(_syncDelete(id));
  }

  @override
  Future<void> updateTask(Task task) async {
    await _dao.updateTask(_dbMapper.fromDomain(task));
    unawaited(_syncUpdate(task));
  }

  @override
  Stream<Task> getTask(TaskId id) {
    return _dao.getTask(id.id).map(_dbMapper.toDomain);
  }

  @override
  Stream<List<TaskId>> getTasks(
    UserId id,
    TaskSortSpec sortSpec, {
    required bool showCompleted,
  }) {
    return _dao
        .getTasks(id.id, sortSpec, showCompleted: showCompleted)
        .map((ids) => ids.map(TaskId.new).toList(growable: false));
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
      final tasks = page.items.map(_apiMapper.toDomain);
      await _dao.upsertTasks(tasks.map(_dbMapper.fromDomain));
    }
    return page.nextToken;
  }

  @override
  Future<void> fetchTasks({
    required UserId userId,
    required TaskSortSpec sortSpec,
  }) async {
    String? token;
    final fetchedIds = <String>{};
    do {
      final page = await _api.fetchTasks(
        userId: userId,
        sortSpec: sortSpec,
        limit: 100,
        nextToken: token,
      );
      if (page.items.isNotEmpty) {
        final tasks = page.items.map(_apiMapper.toDomain).toList();
        for (final task in tasks) {
          fetchedIds.add(task.id.id);
        }
        await _dao.upsertTasks(tasks.map(_dbMapper.fromDomain));
      }
      token = page.nextToken;
    } while (token != null);

    await _dao.deleteTasksNotIn(userId.id, fetchedIds);
  }

  Future<void> _syncCreate(Task task) async {
    try {
      await _api.createTask(_apiMapper.toApi(task));
    } catch (e, st) {
      Zone.current.handleUncaughtError(e, st);
    }
  }

  Future<void> _syncUpdate(Task task) async {
    try {
      await _api.updateTask(_apiMapper.toApi(task));
    } catch (e, st) {
      Zone.current.handleUncaughtError(e, st);
    }
  }

  Future<void> _syncDelete(TaskId id) async {
    try {
      await _api.deleteTask(id.id);
    } catch (e, st) {
      Zone.current.handleUncaughtError(e, st);
    }
  }
}
