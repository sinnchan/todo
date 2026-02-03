// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'db_user_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DbUserSettingModel {

@HiveField(0) String get id;@HiveField(1) String get sortKey;@HiveField(2) String get sortDirection;@HiveField(3) bool get showCompleted;@HiveField(4) bool get enablePushNotification;
/// Create a copy of DbUserSettingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DbUserSettingModelCopyWith<DbUserSettingModel> get copyWith => _$DbUserSettingModelCopyWithImpl<DbUserSettingModel>(this as DbUserSettingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DbUserSettingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey)&&(identical(other.sortDirection, sortDirection) || other.sortDirection == sortDirection)&&(identical(other.showCompleted, showCompleted) || other.showCompleted == showCompleted)&&(identical(other.enablePushNotification, enablePushNotification) || other.enablePushNotification == enablePushNotification));
}


@override
int get hashCode => Object.hash(runtimeType,id,sortKey,sortDirection,showCompleted,enablePushNotification);

@override
String toString() {
  return 'DbUserSettingModel(id: $id, sortKey: $sortKey, sortDirection: $sortDirection, showCompleted: $showCompleted, enablePushNotification: $enablePushNotification)';
}


}

/// @nodoc
abstract mixin class $DbUserSettingModelCopyWith<$Res>  {
  factory $DbUserSettingModelCopyWith(DbUserSettingModel value, $Res Function(DbUserSettingModel) _then) = _$DbUserSettingModelCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String sortKey,@HiveField(2) String sortDirection,@HiveField(3) bool showCompleted,@HiveField(4) bool enablePushNotification
});




}
/// @nodoc
class _$DbUserSettingModelCopyWithImpl<$Res>
    implements $DbUserSettingModelCopyWith<$Res> {
  _$DbUserSettingModelCopyWithImpl(this._self, this._then);

  final DbUserSettingModel _self;
  final $Res Function(DbUserSettingModel) _then;

/// Create a copy of DbUserSettingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sortKey = null,Object? sortDirection = null,Object? showCompleted = null,Object? enablePushNotification = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as String,sortDirection: null == sortDirection ? _self.sortDirection : sortDirection // ignore: cast_nullable_to_non_nullable
as String,showCompleted: null == showCompleted ? _self.showCompleted : showCompleted // ignore: cast_nullable_to_non_nullable
as bool,enablePushNotification: null == enablePushNotification ? _self.enablePushNotification : enablePushNotification // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DbUserSettingModel].
extension DbUserSettingModelPatterns on DbUserSettingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DbUserSettingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DbUserSettingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DbUserSettingModel value)  $default,){
final _that = this;
switch (_that) {
case _DbUserSettingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DbUserSettingModel value)?  $default,){
final _that = this;
switch (_that) {
case _DbUserSettingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String sortKey, @HiveField(2)  String sortDirection, @HiveField(3)  bool showCompleted, @HiveField(4)  bool enablePushNotification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DbUserSettingModel() when $default != null:
return $default(_that.id,_that.sortKey,_that.sortDirection,_that.showCompleted,_that.enablePushNotification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String sortKey, @HiveField(2)  String sortDirection, @HiveField(3)  bool showCompleted, @HiveField(4)  bool enablePushNotification)  $default,) {final _that = this;
switch (_that) {
case _DbUserSettingModel():
return $default(_that.id,_that.sortKey,_that.sortDirection,_that.showCompleted,_that.enablePushNotification);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String sortKey, @HiveField(2)  String sortDirection, @HiveField(3)  bool showCompleted, @HiveField(4)  bool enablePushNotification)?  $default,) {final _that = this;
switch (_that) {
case _DbUserSettingModel() when $default != null:
return $default(_that.id,_that.sortKey,_that.sortDirection,_that.showCompleted,_that.enablePushNotification);case _:
  return null;

}
}

}

/// @nodoc


class _DbUserSettingModel implements DbUserSettingModel {
  const _DbUserSettingModel({@HiveField(0) required this.id, @HiveField(1) required this.sortKey, @HiveField(2) required this.sortDirection, @HiveField(3) required this.showCompleted, @HiveField(4) required this.enablePushNotification});
  

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String sortKey;
@override@HiveField(2) final  String sortDirection;
@override@HiveField(3) final  bool showCompleted;
@override@HiveField(4) final  bool enablePushNotification;

/// Create a copy of DbUserSettingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DbUserSettingModelCopyWith<_DbUserSettingModel> get copyWith => __$DbUserSettingModelCopyWithImpl<_DbUserSettingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DbUserSettingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sortKey, sortKey) || other.sortKey == sortKey)&&(identical(other.sortDirection, sortDirection) || other.sortDirection == sortDirection)&&(identical(other.showCompleted, showCompleted) || other.showCompleted == showCompleted)&&(identical(other.enablePushNotification, enablePushNotification) || other.enablePushNotification == enablePushNotification));
}


@override
int get hashCode => Object.hash(runtimeType,id,sortKey,sortDirection,showCompleted,enablePushNotification);

@override
String toString() {
  return 'DbUserSettingModel(id: $id, sortKey: $sortKey, sortDirection: $sortDirection, showCompleted: $showCompleted, enablePushNotification: $enablePushNotification)';
}


}

/// @nodoc
abstract mixin class _$DbUserSettingModelCopyWith<$Res> implements $DbUserSettingModelCopyWith<$Res> {
  factory _$DbUserSettingModelCopyWith(_DbUserSettingModel value, $Res Function(_DbUserSettingModel) _then) = __$DbUserSettingModelCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String sortKey,@HiveField(2) String sortDirection,@HiveField(3) bool showCompleted,@HiveField(4) bool enablePushNotification
});




}
/// @nodoc
class __$DbUserSettingModelCopyWithImpl<$Res>
    implements _$DbUserSettingModelCopyWith<$Res> {
  __$DbUserSettingModelCopyWithImpl(this._self, this._then);

  final _DbUserSettingModel _self;
  final $Res Function(_DbUserSettingModel) _then;

/// Create a copy of DbUserSettingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sortKey = null,Object? sortDirection = null,Object? showCompleted = null,Object? enablePushNotification = null,}) {
  return _then(_DbUserSettingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sortKey: null == sortKey ? _self.sortKey : sortKey // ignore: cast_nullable_to_non_nullable
as String,sortDirection: null == sortDirection ? _self.sortDirection : sortDirection // ignore: cast_nullable_to_non_nullable
as String,showCompleted: null == showCompleted ? _self.showCompleted : showCompleted // ignore: cast_nullable_to_non_nullable
as bool,enablePushNotification: null == enablePushNotification ? _self.enablePushNotification : enablePushNotification // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
