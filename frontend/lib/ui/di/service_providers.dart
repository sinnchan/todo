import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/app/service/sort_service.dart';
import 'package:todo/ui/di/settings_providers.dart';

part 'service_providers.g.dart';

@riverpod
Future<TaskSortService> sortService(Ref ref) async {
  return TaskSortService(
    await ref.watch(userSettingsRepositoryProvider.future),
  );
}
