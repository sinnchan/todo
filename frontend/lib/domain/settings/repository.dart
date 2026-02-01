import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/user/values.dart';

abstract interface class UserSettingsRepository {
  Future<void> initSettings(UserId id);
  Future<void> updateSettings(UserSettings settings);
  Stream<UserSettings> getUserSettings(UserId id);
}
