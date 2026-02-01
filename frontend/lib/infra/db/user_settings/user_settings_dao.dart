import 'package:hive_ce/hive.dart';
import 'package:todo/domain/settings/user_settings.dart';
import 'package:todo/domain/settings/settings_values.dart';
import 'package:todo/domain/user/user_values.dart';
import 'package:todo/infra/db/user_settings/db_user_setting_mapper.dart';
import 'package:todo/infra/db/user_settings/db_user_setting_model.dart';

class UserSettingsDao {
  static const DbUserSettingMapper _mapper = DbUserSettingMapper();
  final Box<DbUserSettingModel> box;

  UserSettingsDao(this.box);

  Future<void> initSettings(UserId id) async {
    await updateSettings(_defaultSettings(id));
  }

  Future<void> updateSettings(UserSettings settings) {
    return box.put(settings.id, _mapper.fromDomain(settings));
  }

  Stream<UserSettings> getUserSettings(UserId id) async* {
    final existing = box.get(id);
    if (existing != null) {
      yield _mapper.toDomain(existing);
    } else {
      final defaults = _defaultSettings(id);
      await updateSettings(defaults);
      yield defaults;
    }

    yield* box.watch(key: id).map((event) {
      if (event.deleted || event.value == null) {
        return _defaultSettings(id);
      }
      if (event.value case final DbUserSettingModel value) {
        return _mapper.toDomain(value);
      }
      throw StateError(
        'unexpected settings value type: ${event.value.runtimeType}',
      );
    });
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
