import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/db/task/tasks_dao.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._dao);

  final TasksDao _dao;

  @override
  Future<void> createTask(Task task) {
    return _dao.createTask(task);
  }

  @override
  Future<void> deleteTask(TaskId id) {
    return _dao.deleteTask(id);
  }

  @override
  Future<void> updateTask(Task task) {
    return _dao.updateTask(task);
  }

  @override
  Stream<Task> getTask(TaskId id) {
    return _dao.getTask(id);
  }

  @override
  Stream<List<TaskId>> getTasks(UserId id, TaskSortSpec sortSpec) {
    return _dao.getTasks(id, sortSpec);
  }
}
