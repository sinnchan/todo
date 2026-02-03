// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_user_setting_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DbUserSettingModelAdapter extends TypeAdapter<DbUserSettingModel> {
  @override
  final typeId = 2;

  @override
  DbUserSettingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DbUserSettingModel(
      id: fields[0] as String,
      sortKey: fields[1] as String,
      sortDirection: fields[2] as String,
      showCompleted: fields[3] as bool,
      enablePushNotification: fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, DbUserSettingModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.sortKey)
      ..writeByte(2)
      ..write(obj.sortDirection)
      ..writeByte(3)
      ..write(obj.showCompleted)
      ..writeByte(4)
      ..write(obj.enablePushNotification);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DbUserSettingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
