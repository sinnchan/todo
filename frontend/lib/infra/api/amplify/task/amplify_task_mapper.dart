import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:dart_scope_functions/dart_scope_functions.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/api/amplify/gen/models/Task.dart' as api;

class AmplifyTaskMapper {
  const AmplifyTaskMapper();

  api.Task toApi(Task task) {
    return api.Task(
      id: task.id,
      owner: task.owner,
      title: task.title,
      description: task.description,
      order: task.order,
      datetime: task.datetime?.let(TemporalDateTime.new),
      createdAt: TemporalDateTime(task.createdAt),
      updatedAt: TemporalDateTime(task.updatedAt),
      isCompleted: task.isCompleted ?? false,
    );
  }

  Task toDomain(api.Task task) {
    final owner = task.owner;
    if (owner == null) {
      throw StateError('Task owner is missing');
    }
    return Task(
      id: TaskId(task.id),
      owner: UserId(owner),
      title: task.title,
      description: task.description,
      order: task.order,
      datetime: task.datetime?.getDateTimeInUtc(),
      isCompleted: task.isCompleted,
      createdAt: task.createdAt.getDateTimeInUtc(),
      updatedAt: task.updatedAt.getDateTimeInUtc(),
    );
  }
}
