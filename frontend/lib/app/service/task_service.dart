import 'package:todo/domain/settings/settings_repository.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/task/task_values.dart';
import 'package:todo/domain/user/user_values.dart';

class TaskService {
  const TaskService(this.tasksRepo, this.settingsRepo);

  final TaskRepository tasksRepo;
  final UserSettingsRepository settingsRepo;

  Future<void> fetchTasks({required UserId userId}) async {
    final settings = await settingsRepo.getUserSettings(userId).first;
    await tasksRepo.fetchTasks(userId: userId, sortSpec: settings.sortSpec);
  }

  Future<void> createTask({required UserId userId, required Task task}) {
    return tasksRepo.createTask(task);
  }

  Future<void> updateTask({required UserId userId, required Task task}) {
    return tasksRepo.updateTask(task);
  }

  Future<void> deleteTask({required UserId userId, required TaskId id}) {
    return tasksRepo.deleteTask(id);
  }
}
