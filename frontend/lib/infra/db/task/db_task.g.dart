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
      title: fields[2] as String,
      description: fields[3] as String?,
      datetime: fields[4] as DateTime?,
      isCompleted: fields[5] as bool?,
      createdAt: fields[6] as DateTime?,
      updatedAt: fields[7] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, DbTask obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.owner)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.datetime)
      ..writeByte(5)
      ..write(obj.isCompleted)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
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
