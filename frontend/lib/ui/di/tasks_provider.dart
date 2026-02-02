import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/task/task_sort.dart';
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

class TasksState {
  const TasksState({
    required this.ids,
    required this.isFetching,
    required this.hasMore,
  });

  final List<TaskId> ids;
  final bool isFetching;
  final bool hasMore;

  TasksState copyWith({
    List<TaskId>? ids,
    bool? isFetching,
    bool? hasMore,
  }) {
    return TasksState(
      ids: ids ?? this.ids,
      isFetching: isFetching ?? this.isFetching,
      hasMore: hasMore ?? this.hasMore,
    );
  }

  static TasksState empty() {
    return const TasksState(ids: [], isFetching: false, hasMore: true);
  }
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
class Tasks extends _$Tasks {
  static const int _pageSize = 30;

  StreamSubscription<List<TaskId>>? _subscription;
  TaskRepository? _repo;
  TaskSortSpec? _sortSpec;
  UserId? _userId;
  String? _nextToken;
  bool _showCompleted = true;
  bool _isFetching = false;
  bool _hasMore = true;
  int _buildToken = 0;

  @override
  Future<TasksState> build(UserId userId) async {
    final buildToken = ++_buildToken;
    _userId = userId;
    ref.onDispose(() {
      _buildToken++;
      _subscription?.cancel();
    });
    _repo = await ref.watch(taskRepositoryProvider.future);
    if (!ref.mounted || buildToken != _buildToken) {
      return TasksState.empty();
    }
    final settings = await ref.watch(userSettingsProvider(userId).future);
    if (!ref.mounted || buildToken != _buildToken) {
      return TasksState.empty();
    }
    final previousSortSpec = _sortSpec;
    final nextSortSpec = TaskSortSpec(
      key: settings.sortKey,
      direction: settings.sortDirection,
    );
    final sortChanged = previousSortSpec?.key != nextSortSpec.key ||
        previousSortSpec?.direction != nextSortSpec.direction;
    _sortSpec = nextSortSpec;
    _showCompleted = settings.showCompleted;
    if (previousSortSpec == null || sortChanged) {
      _resetPaging();
    }

    final completer = Completer<TasksState>();
    _subscribe(userId, completer);
    final initialState = await completer.future;
    if (!ref.mounted || buildToken != _buildToken) {
      return TasksState.empty();
    }
    unawaited(_prefetchIfNeeded(initialState.ids.length));
    return initialState;
  }

  Future<void> fetchNextPage() async {
    final repo = _repo;
    final sortSpec = _sortSpec;
    final userId = _userId;
    if (repo == null || sortSpec == null || userId == null) return;
    if (_isFetching || !_hasMore) return;

    _isFetching = true;
    _updateStatus();
    try {
      final nextToken = await repo.fetchTasksPage(
        userId: userId,
        sortSpec: sortSpec,
        limit: _pageSize,
        nextToken: _nextToken,
      );
      _nextToken = nextToken;
      _hasMore = nextToken != null;
    } catch (e, st) {
      Zone.current.handleUncaughtError(e, st);
    } finally {
      _isFetching = false;
      _updateStatus();
    }
  }

  void _subscribe(UserId userId, Completer<TasksState>? completer) {
    final repo = _repo;
    final sortSpec = _sortSpec;
    if (repo == null || sortSpec == null) return;

    _subscription?.cancel();
    _subscription = repo
        .getTasks(userId, sortSpec, showCompleted: _showCompleted)
        .listen(
      (ids) {
        final nextState = TasksState(
          ids: ids,
          isFetching: _isFetching,
          hasMore: _hasMore,
        );
        if (completer != null && !completer.isCompleted) {
          completer.complete(nextState);
        }
        state = AsyncData(nextState);
      },
    );
  }

  void _resetPaging() {
    _nextToken = null;
    _hasMore = true;
  }

  void _updateStatus() {
    final current = state.asData?.value ?? TasksState.empty();
    state = AsyncData(
      current.copyWith(
        isFetching: _isFetching,
        hasMore: _hasMore,
      ),
    );
  }

  Future<void> _prefetchIfNeeded(int currentLength) async {
    if (currentLength < _pageSize && _hasMore) {
      await fetchNextPage();
    }
  }
}

@riverpod
Stream<Task> task(Ref ref, TaskId id) async* {
  final repo = await ref.watch(taskRepositoryProvider.future);
  yield* repo.getTask(id);
}
