import 'package:todo/domain/settings/settings_repository.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/user/user_values.dart';

class SettingsService {
  const SettingsService(this.settingsRepo);

  final UserSettingsRepository settingsRepo;

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

  Future<void> updateShowCompleted({
    required UserId userId,
    required bool showCompleted,
  }) async {
    final settings = await settingsRepo.getUserSettings(userId).first;
    final updated = settings.copyWith(showCompleted: showCompleted);
    await settingsRepo.updateSettings(updated);
  }

  Future<void> updatePushNotification({
    required UserId userId,
    required bool enablePushNotification,
  }) async {
    final settings = await settingsRepo.getUserSettings(userId).first;
    final updated = settings.copyWith(
      enablePushNotification: enablePushNotification,
    );
    await settingsRepo.updateSettings(updated);
  }
}
