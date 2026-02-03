import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/common/mapper.dart';
import 'package:todo/infra/db/user_settings/db_user_setting_model.dart';

class DbUserSettingMapper implements Mapper<UserSettings, DbUserSettingModel> {
  const DbUserSettingMapper();

  @override
  DbUserSettingModel fromDomain(UserSettings settings) {
    return DbUserSettingModel(
      id: settings.id,
      sortKey: settings.sortKey.name,
      sortDirection: settings.sortDirection.name,
      showCompleted: settings.showCompleted,
      enablePushNotification: settings.enablePushNotification,
    );
  }

  @override
  UserSettings toDomain(DbUserSettingModel model) {
    return UserSettings(
      id: UserId(model.id),
      sortKey: _parseSortKey(model.sortKey),
      sortDirection: _parseSortDirection(model.sortDirection),
      showCompleted: model.showCompleted,
      enablePushNotification: model.enablePushNotification,
    );
  }

  SortKey _parseSortKey(String raw) {
    return SortKey.values.firstWhere(
      (value) => value.name == raw,
      orElse: () => SortKey.createdAt,
    );
  }

  SortDirection _parseSortDirection(String raw) {
    return SortDirection.values.firstWhere(
      (value) => value.name == raw,
      orElse: () => SortDirection.desc,
    );
  }
}
