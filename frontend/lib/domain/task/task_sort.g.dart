// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskSortSpec _$TaskSortSpecFromJson(Map<String, dynamic> json) =>
    _TaskSortSpec(
      key: $enumDecode(_$SortKeyEnumMap, json['key']),
      direction: $enumDecode(_$SortDirectionEnumMap, json['direction']),
    );

Map<String, dynamic> _$TaskSortSpecToJson(_TaskSortSpec instance) =>
    <String, dynamic>{
      'key': _$SortKeyEnumMap[instance.key]!,
      'direction': _$SortDirectionEnumMap[instance.direction]!,
    };

const _$SortKeyEnumMap = {
  SortKey.createdAt: 'createdAt',
  SortKey.updatedAt: 'updatedAt',
  SortKey.dueAt: 'dueAt',
  SortKey.title: 'title',
};

const _$SortDirectionEnumMap = {
  SortDirection.asc: 'asc',
  SortDirection.desc: 'desc',
};
