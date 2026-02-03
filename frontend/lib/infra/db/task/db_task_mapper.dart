import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
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
      datetime: task.datetime,
      isCompleted: task.isCompleted,
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
      datetime: dbTask.datetime,
      isCompleted: dbTask.isCompleted,
      createdAt: dbTask.createdAt!,
      updatedAt: dbTask.updatedAt!,
    );
  }
}
