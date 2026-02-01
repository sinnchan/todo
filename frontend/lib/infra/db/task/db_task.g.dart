// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DbTaskAdapter extends TypeAdapter<DbTask> {
  @override
  final typeId = 1;

  @override
  DbTask read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DbTask(
      id: fields[0] as String,
      owner: fields[1] as String,
      title: fields[2] as String?,
      description: fields[3] as String?,
      order: (fields[4] as num?)?.toInt(),
      datetime: fields[5] as DateTime?,
      isCompleted: fields[6] as bool?,
      createdAt: fields[7] as DateTime?,
      updatedAt: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, DbTask obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.owner)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.order)
      ..writeByte(5)
      ..write(obj.datetime)
      ..writeByte(6)
      ..write(obj.isCompleted)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DbTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
