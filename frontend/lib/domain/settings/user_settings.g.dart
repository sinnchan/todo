// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSettings _$UserSettingsFromJson(Map<String, dynamic> json) =>
    _UserSettings(
      id: json['id'] as UserId,
      sortKey: $enumDecode(_$SortKeyEnumMap, json['sortKey']),
      sortDirection: $enumDecode(_$SortDirectionEnumMap, json['sortDirection']),
      showCompleted: json['showCompleted'] as bool,
      enablePushNotification: json['enablePushNotification'] as bool,
    );

Map<String, dynamic> _$UserSettingsToJson(_UserSettings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sortKey': _$SortKeyEnumMap[instance.sortKey]!,
      'sortDirection': _$SortDirectionEnumMap[instance.sortDirection]!,
      'showCompleted': instance.showCompleted,
      'enablePushNotification': instance.enablePushNotification,
    };

const _$SortKeyEnumMap = {
  SortKey.createdAt: 'createdAt',
  SortKey.updatedAt: 'updatedAt',
  SortKey.dueAt: 'dueAt',
  SortKey.title: 'title',
  SortKey.order: 'order',
};

const _$SortDirectionEnumMap = {
  SortDirection.asc: 'asc',
  SortDirection.desc: 'desc',
};
