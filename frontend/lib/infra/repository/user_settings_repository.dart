import 'package:todo/domain/settings/settings_repository.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/db/user_settings/user_settings_dao.dart';

class UserSettingRepositoryImpl implements UserSettingsRepository {
  UserSettingRepositoryImpl(this._dao);

  final UserSettingsDao _dao;

  @override
  Future<void> initSettings(UserId id) {
    return _dao.initSettings(id);
  }

  @override
  Future<void> updateSettings(UserSettings settings) {
    return _dao.updateSettings(settings);
  }

  @override
  Stream<UserSettings> getUserSettings(UserId id) {
    return _dao.getUserSettings(id);
  }
}
