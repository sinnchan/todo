import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/domain/settings/values.dart';
import 'package:todo/domain/user/values.dart';

part 'user_settings.freezed.dart';
part 'user_settings.g.dart';

@freezed
abstract class UserSettings with _$UserSettings {
  const factory UserSettings({
    required UserId id,
    required SortKey sortKey,
    required SortDirection sortDirection,
    required bool showCompleted,
    required bool enablePushNotification,
  }) = _UserSettings;

  factory UserSettings.fromJson(Map<String, Object?> json) =>
      _$UserSettingsFromJson(json);
}
