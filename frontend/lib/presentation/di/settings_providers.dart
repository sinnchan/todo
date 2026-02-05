import 'package:hooks_riverpod/hooks_riverpod.dart' as hooks;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:todo/application/service/settings_service.dart';
import 'package:todo/domain/settings/settings_repository.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/db/user_settings/db_user_setting_model.dart';
import 'package:todo/infra/db/user_settings/user_settings_dao.dart';
import 'package:todo/infra/repository/user_settings_repository.dart';
import 'package:todo/presentation/di/box_provider.dart';

part 'settings_providers.g.dart';

@riverpod
Future<UserSettingsRepository> userSettingsRepository(Ref ref) async {
  return UserSettingRepositoryImpl(
    await ref.watch(userSettingsDaoProvider.future),
  );
}

@riverpod
Future<UserSettingsDao> userSettingsDao(Ref ref) async {
  return UserSettingsDao(
    await ref.watch(
      boxProvider<DbUserSettingModel>('USER_SETTINGS').future,
    ),
  );
}

@riverpod
Stream<UserSettings> userSettings(Ref ref, UserId id) async* {
  final repo = await ref.watch(userSettingsRepositoryProvider.future);
  yield* repo.getUserSettings(id);
}

final settingsServiceProvider = hooks.FutureProvider<SettingsService>((
  ref,
) async {
  final repo = await ref.watch(userSettingsRepositoryProvider.future);
  return SettingsService(repo);
});
