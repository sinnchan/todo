import 'package:hive_ce/hive.dart';
import 'package:todo/infra/db/user_settings/db_user_setting_model.dart';

class UserSettingsDao {
  final Box<DbUserSettingModel> box;

  UserSettingsDao(this.box);

  Future<void> initSettings(DbUserSettingModel settings) async {
    if (!box.containsKey(settings.id)) {
      await updateSettings(settings);
    }
  }

  Future<void> updateSettings(DbUserSettingModel settings) {
    return box.put(settings.id, settings);
  }

  Stream<DbUserSettingModel> getUserSettings(
    String id, {
    required DbUserSettingModel defaultSettings,
  }) async* {
    final existing = box.get(id);
    if (existing != null) {
      yield existing;
    } else {
      await updateSettings(defaultSettings);
      yield defaultSettings;
    }

    yield* box.watch(key: id).map((event) {
      if (event.deleted || event.value == null) {
        return defaultSettings;
      }
      if (event.value case final DbUserSettingModel value) {
        return value;
      }
      throw StateError(
        'unexpected settings value type: ${event.value.runtimeType}',
      );
    });
  }
}
