import 'package:todo/domain/settings/settings_repository.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/task/task_sort.dart';
import 'package:todo/domain/user/user_values.dart';

class TaskSortService {
  const TaskSortService(this.settingsRepository);

  final UserSettingsRepository settingsRepository;

  // todo: uiからこれで更新するようにする
  Future<void> updateSort({
    required UserId userId,
    SortKey? key,
    SortDirection? direction,
  }) async {
    final settings = await settingsRepository.getUserSettings(userId).first;
    final updated = settings.copyWith(
      sortKey: key ?? settings.sortKey,
      sortDirection: direction ?? settings.sortDirection,
    );
    await settingsRepository.updateSettings(updated);
  }

  Future<TaskSortSpec> getSortSpec(UserId userId) async {
    final settings = await settingsRepository.getUserSettings(userId).first;
    return TaskSortSpec(
      key: settings.sortKey,
      direction: settings.sortDirection,
    );
  }
}
