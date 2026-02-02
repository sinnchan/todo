// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DbTask {

@HiveField(0) String get id;@HiveField(1) String get owner;@HiveField(2) String get title;@HiveField(3) String? get description;@HiveField(5) DateTime? get datetime;@HiveField(6) bool? get isCompleted;@HiveField(7) DateTime? get createdAt;@HiveField(8) DateTime? get updatedAt;
/// Create a copy of DbTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DbTaskCopyWith<DbTask> get copyWith => _$DbTaskCopyWithImpl<DbTask>(this as DbTask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DbTask&&(identical(other.id, id) || other.id == id)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,owner,title,description,datetime,isCompleted,createdAt,updatedAt);

@override
String toString() {
  return 'DbTask(id: $id, owner: $owner, title: $title, description: $description, datetime: $datetime, isCompleted: $isCompleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DbTaskCopyWith<$Res>  {
  factory $DbTaskCopyWith(DbTask value, $Res Function(DbTask) _then) = _$DbTaskCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String owner,@HiveField(2) String title,@HiveField(3) String? description,@HiveField(5) DateTime? datetime,@HiveField(6) bool? isCompleted,@HiveField(7) DateTime? createdAt,@HiveField(8) DateTime? updatedAt
});




}
/// @nodoc
class _$DbTaskCopyWithImpl<$Res>
    implements $DbTaskCopyWith<$Res> {
  _$DbTaskCopyWithImpl(this._self, this._then);

  final DbTask _self;
  final $Res Function(DbTask) _then;

/// Create a copy of DbTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? owner = null,Object? title = null,Object? description = freezed,Object? datetime = freezed,Object? isCompleted = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DbTask].
extension DbTaskPatterns on DbTask {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DbTask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DbTask() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DbTask value)  $default,){
final _that = this;
switch (_that) {
case _DbTask():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DbTask value)?  $default,){
final _that = this;
switch (_that) {
case _DbTask() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String owner, @HiveField(2)  String title, @HiveField(3)  String? description, @HiveField(5)  DateTime? datetime, @HiveField(6)  bool? isCompleted, @HiveField(7)  DateTime? createdAt, @HiveField(8)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DbTask() when $default != null:
return $default(_that.id,_that.owner,_that.title,_that.description,_that.datetime,_that.isCompleted,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String owner, @HiveField(2)  String title, @HiveField(3)  String? description, @HiveField(5)  DateTime? datetime, @HiveField(6)  bool? isCompleted, @HiveField(7)  DateTime? createdAt, @HiveField(8)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DbTask():
return $default(_that.id,_that.owner,_that.title,_that.description,_that.datetime,_that.isCompleted,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String owner, @HiveField(2)  String title, @HiveField(3)  String? description, @HiveField(5)  DateTime? datetime, @HiveField(6)  bool? isCompleted, @HiveField(7)  DateTime? createdAt, @HiveField(8)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DbTask() when $default != null:
return $default(_that.id,_that.owner,_that.title,_that.description,_that.datetime,_that.isCompleted,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _DbTask implements DbTask {
  const _DbTask({@HiveField(0) required this.id, @HiveField(1) required this.owner, @HiveField(2) required this.title, @HiveField(3) required this.description, @HiveField(5) required this.datetime, @HiveField(6) required this.isCompleted, @HiveField(7) required this.createdAt, @HiveField(8) required this.updatedAt});
  

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String owner;
@override@HiveField(2) final  String title;
@override@HiveField(3) final  String? description;
@override@HiveField(5) final  DateTime? datetime;
@override@HiveField(6) final  bool? isCompleted;
@override@HiveField(7) final  DateTime? createdAt;
@override@HiveField(8) final  DateTime? updatedAt;

/// Create a copy of DbTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DbTaskCopyWith<_DbTask> get copyWith => __$DbTaskCopyWithImpl<_DbTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DbTask&&(identical(other.id, id) || other.id == id)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.datetime, datetime) || other.datetime == datetime)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,owner,title,description,datetime,isCompleted,createdAt,updatedAt);

@override
String toString() {
  return 'DbTask(id: $id, owner: $owner, title: $title, description: $description, datetime: $datetime, isCompleted: $isCompleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DbTaskCopyWith<$Res> implements $DbTaskCopyWith<$Res> {
  factory _$DbTaskCopyWith(_DbTask value, $Res Function(_DbTask) _then) = __$DbTaskCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String owner,@HiveField(2) String title,@HiveField(3) String? description,@HiveField(5) DateTime? datetime,@HiveField(6) bool? isCompleted,@HiveField(7) DateTime? createdAt,@HiveField(8) DateTime? updatedAt
});




}
/// @nodoc
class __$DbTaskCopyWithImpl<$Res>
    implements _$DbTaskCopyWith<$Res> {
  __$DbTaskCopyWithImpl(this._self, this._then);

  final _DbTask _self;
  final $Res Function(_DbTask) _then;

/// Create a copy of DbTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? owner = null,Object? title = null,Object? description = freezed,Object? datetime = freezed,Object? isCompleted = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DbTask(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,datetime: freezed == datetime ? _self.datetime : datetime // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
