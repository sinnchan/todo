import 'package:hive_ce/hive.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/infra/db/task/db_task.dart';

class TasksDao {
  final Box<DbTask> box;

  TasksDao(this.box);

  Future<void> createTask(DbTask task) {
    return box.put(task.id, task);
  }

  Future<void> updateTask(DbTask task) {
    return box.put(task.id, task);
  }

  Future<void> deleteTask(String id) {
    return box.delete(id);
  }

  Future<void> upsertTasks(Iterable<DbTask> tasks) async {
    if (tasks.isEmpty) return;
    final mapped = <String, DbTask>{};
    for (final task in tasks) {
      mapped[task.id] = task;
    }
    await box.putAll(mapped);
  }

  Stream<DbTask> getTask(String id) async* {
    if (box.get(id) case final value?) {
      yield _taskFromBoxValue(value);
    }
    await for (final event in box.watch(key: id)) {
      if (!event.deleted && event.value != null) {
        yield _taskFromBoxValue(event.value);
      }
    }
  }

  Stream<List<String>> getTasks(
    String ownerId,
    TaskSortSpec sortSpec, {
    required bool showCompleted,
  }) async* {
    List<String> snapshot() {
      final tasks = box.values
          .where(
            (task) =>
                task.owner == ownerId &&
                (showCompleted || !(task.isCompleted ?? false)),
          )
          .toList();
      tasks.sort((a, b) => _compareTasks(a, b, sortSpec));
      return tasks.map((task) => task.id).toList();
    }

    yield snapshot();
    yield* box.watch().map((_) => snapshot());
  }

  int _compareTasks(DbTask a, DbTask b, TaskSortSpec sortSpec) {
    final ascending = sortSpec.direction == SortDirection.asc;
    int result;

    switch (sortSpec.key) {
      case SortKey.createdAt:
        result = _compareNullable(a.createdAt, b.createdAt, ascending);
        break;
      case SortKey.updatedAt:
        result = _compareNullable(a.updatedAt, b.updatedAt, ascending);
        break;
      case SortKey.dueAt:
        result = _compareNullable(a.datetime, b.datetime, ascending);
        break;
      case SortKey.title:
        result = ascending
            ? a.title.compareTo(b.title)
            : b.title.compareTo(a.title);
        break;
    }

    if (result != 0) {
      return result;
    }

    result = _compareNullable(a.createdAt, b.createdAt, ascending);
    if (result != 0) {
      return result;
    }

    return a.id.compareTo(b.id);
  }

  int _compareNullable<T extends Comparable<T>>(
    T? a,
    T? b,
    bool ascending,
  ) {
    if (a == null && b == null) return 0;
    if (a == null) return 1;
    if (b == null) return -1;
    return ascending ? a.compareTo(b) : b.compareTo(a);
  }

  DbTask _taskFromBoxValue(Object? value) {
    if (value case final DbTask task) {
      return task;
    }
    throw StateError('Unexpected task value type: ${value.runtimeType}');
  }
}
