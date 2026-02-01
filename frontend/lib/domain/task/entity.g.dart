// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Task _$TaskFromJson(Map<String, dynamic> json) => _Task(
  id: json['id'] as TaskId,
  owner: json['owner'] as UserId,
  title: json['title'] as String?,
  description: json['description'] as String?,
  order: (json['order'] as num?)?.toInt(),
  datetime: json['datetime'] == null
      ? null
      : DateTime.parse(json['datetime'] as String),
  done: json['done'] as bool?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$TaskToJson(_Task instance) => <String, dynamic>{
  'id': instance.id,
  'owner': instance.owner,
  'title': instance.title,
  'description': instance.description,
  'order': instance.order,
  'datetime': instance.datetime?.toIso8601String(),
  'done': instance.done,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
