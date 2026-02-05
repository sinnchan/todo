import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/application/service/task_service.dart';
import 'package:todo/presentation/di/settings_providers.dart';
import 'package:todo/presentation/di/tasks_provider.dart';

part 'service_providers.g.dart';

@riverpod
Future<TaskService> sortService(Ref ref) async {
  return TaskService(
    await ref.watch(taskRepositoryProvider.future),
    await ref.watch(userSettingsRepositoryProvider.future),
  );
}
