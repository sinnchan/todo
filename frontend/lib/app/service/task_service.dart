import 'package:todo/domain/settings/settings_repository.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/task/task_entity.dart';
import 'package:todo/domain/task/task_repository.dart';
import 'package:todo/domain/user/user_values.dart';

class TaskService {
  const TaskService(this.tasksRepo, this.settingsRepo);

  final TaskRepository tasksRepo;
  final UserSettingsRepository settingsRepo;

  Future<void> fetchTasks({required UserId userId}) async {
    final settings = await settingsRepo.getUserSettings(userId).first;
    await tasksRepo.fetchTasks(userId: userId, sortSpec: settings.sortSpec);
  }

  Future<void> createTask({
    required UserId userId,
    required Task task,
  }) async {
    await tasksRepo.createTask(task);
  }

  Future<void> updateTask({
    required UserId userId,
    required Task task,
  }) async {
    await tasksRepo.updateTask(task);
  }

  Future<void> updateSort({
    required UserId userId,
    SortKey? key,
    SortDirection? direction,
  }) async {
    final settings = await settingsRepo.getUserSettings(userId).first;
    final updated = settings.copyWith(
      sortKey: key ?? settings.sortKey,
      sortDirection: direction ?? settings.sortDirection,
    );
    await settingsRepo.updateSettings(updated);
  }
}
