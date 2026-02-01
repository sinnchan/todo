import 'package:hive_ce/hive.dart';
import 'package:todo/domain/task/entity.dart';
import 'package:todo/domain/task/values.dart';
import 'package:todo/domain/user/values.dart';
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

  Stream<List<TaskId>> getTasks(UserId id) async* {
    List<TaskId> snapshot() {
      return box.values
          .where((task) => task.owner == id)
          .map((task) => TaskId(task.id))
          .toList();
    }

    yield snapshot();
    yield* box
        .watch()
        .where((i) => (i.value as DbTask?)?.owner == id)
        .map((i) => snapshot());
  }

  Task _taskFromBoxValue(Object? value) {
    if (value case final DbTask task) {
      return _mapper.toDomain(task);
    }
    throw StateError('Unexpected task value type: ${value.runtimeType}');
  }
}
