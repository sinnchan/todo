import 'package:todo/domain/settings/settings_repository.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/db/user_settings/db_user_setting_mapper.dart';
import 'package:todo/infra/db/user_settings/user_settings_dao.dart';

class UserSettingRepositoryImpl implements UserSettingsRepository {
  UserSettingRepositoryImpl(this._dao);

  final UserSettingsDao _dao;
  static const DbUserSettingMapper _mapper = DbUserSettingMapper();

  @override
  Future<void> initSettings(UserId id) {
    return _dao.initSettings(_mapper.fromDomain(_defaultSettings(id)));
  }

  @override
  Future<void> updateSettings(UserSettings settings) {
    return _dao.updateSettings(_mapper.fromDomain(settings));
  }

  @override
  Stream<UserSettings> getUserSettings(UserId id) {
    final defaults = _mapper.fromDomain(_defaultSettings(id));
    return _dao
        .getUserSettings(id.id, defaultSettings: defaults)
        .map(_mapper.toDomain);
  }

  UserSettings _defaultSettings(UserId id) {
    return UserSettings(
      id: id,
      sortKey: SortKey.createdAt,
      sortDirection: SortDirection.desc,
      showCompleted: false,
      enablePushNotification: false,
    );
  }
}
