import 'package:todo/domain/task/entity.dart';
import 'package:todo/domain/task/values.dart';
import 'package:todo/domain/user/values.dart';
import 'package:todo/infra/common/mapper.dart';
import 'package:todo/infra/db/task/db_task.dart';

class DbTaskMapper implements Mapper<Task, DbTask> {
  const DbTaskMapper();

  @override
  DbTask fromDomain(Task task) {
    return DbTask(
      id: task.id,
      owner: task.owner,
      title: task.title,
      description: task.description,
      order: task.order,
      datetime: task.datetime,
      done: task.done,
      createdAt: task.createdAt,
      updatedAt: task.updatedAt,
    );
  }

  @override
  Task toDomain(DbTask dbTask) {
    return Task(
      id: TaskId(dbTask.id),
      owner: UserId(dbTask.owner),
      title: dbTask.title,
      description: dbTask.description,
      order: dbTask.order,
      datetime: dbTask.datetime,
      done: dbTask.done,
      createdAt: dbTask.createdAt,
      updatedAt: dbTask.updatedAt,
    );
  }
}
