import 'package:hive_ce/hive.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/db/task/db_task.dart';
import 'package:todo/infra/db/task/db_task_mapper.dart';

class TasksDao {
  static const DbTaskMapper _mapper = DbTaskMapper();
  final Box<DbTask> box;

  TasksDao(this.box);

  Future<void> createTask(Task task) {
    return box.put(task.id, _mapper.fromDomain(task));
  }

  Future<void> updateTask(Task task) {
    return box.put(task.id, _mapper.fromDomain(task));
  }

  Future<void> deleteTask(TaskId id) {
    return box.delete(id);
  }

  Future<void> upsertTasks(Iterable<Task> tasks) async {
    if (tasks.isEmpty) return;
    final mapped = <String, DbTask>{};
    for (final task in tasks) {
      mapped[task.id] = _mapper.fromDomain(task);
    }
    await box.putAll(mapped);
  }

  Stream<Task> getTask(TaskId id) async* {
    if (box.get(id) case final value?) {
      yield _taskFromBoxValue(value);
    }
    await for (final event in box.watch(key: id)) {
      if (!event.deleted && event.value != null) {
        yield _taskFromBoxValue(event.value);
      }
    }
  }

  Stream<List<TaskId>> getTasks(
    UserId id,
    TaskSortSpec sortSpec, {
    required bool showCompleted,
  }) async* {
    List<TaskId> snapshot() {
      final tasks = box.values
          .where(
            (task) =>
                task.owner == id &&
                (showCompleted || !(task.isCompleted ?? false)),
          )
          .toList();
      tasks.sort((a, b) => _compareTasks(a, b, sortSpec));
      return tasks.map((task) => TaskId(task.id)).toList();
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

  Task _taskFromBoxValue(Object? value) {
    if (value case final DbTask task) {
      return _mapper.toDomain(task);
    }
    throw StateError('Unexpected task value type: ${value.runtimeType}');
  }
}
