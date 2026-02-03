import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

part 'db_user_setting_model.freezed.dart';
part 'db_user_setting_model.g.dart';

@freezed
@HiveType(typeId: 2)
abstract class DbUserSettingModel with _$DbUserSettingModel {
  const factory DbUserSettingModel({
    @HiveField(0) required String id,
    @HiveField(1) required String sortKey,
    @HiveField(2) required String sortDirection,
    @HiveField(3) required bool showCompleted,
    @HiveField(4) required bool enablePushNotification,
  }) = _DbUserSettingModel;
}
