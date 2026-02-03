// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_sort.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaskSortSpec {

 SortKey get key; SortDirection get direction;
/// Create a copy of TaskSortSpec
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskSortSpecCopyWith<TaskSortSpec> get copyWith => _$TaskSortSpecCopyWithImpl<TaskSortSpec>(this as TaskSortSpec, _$identity);

  /// Serializes this TaskSortSpec to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskSortSpec&&(identical(other.key, key) || other.key == key)&&(identical(other.direction, direction) || other.direction == direction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,direction);

@override
String toString() {
  return 'TaskSortSpec(key: $key, direction: $direction)';
}


}

/// @nodoc
abstract mixin class $TaskSortSpecCopyWith<$Res>  {
  factory $TaskSortSpecCopyWith(TaskSortSpec value, $Res Function(TaskSortSpec) _then) = _$TaskSortSpecCopyWithImpl;
@useResult
$Res call({
 SortKey key, SortDirection direction
});




}
/// @nodoc
class _$TaskSortSpecCopyWithImpl<$Res>
    implements $TaskSortSpecCopyWith<$Res> {
  _$TaskSortSpecCopyWithImpl(this._self, this._then);

  final TaskSortSpec _self;
  final $Res Function(TaskSortSpec) _then;

/// Create a copy of TaskSortSpec
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? direction = null,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as SortKey,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as SortDirection,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskSortSpec].
extension TaskSortSpecPatterns on TaskSortSpec {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskSortSpec value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskSortSpec() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskSortSpec value)  $default,){
final _that = this;
switch (_that) {
case _TaskSortSpec():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskSortSpec value)?  $default,){
final _that = this;
switch (_that) {
case _TaskSortSpec() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SortKey key,  SortDirection direction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskSortSpec() when $default != null:
return $default(_that.key,_that.direction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SortKey key,  SortDirection direction)  $default,) {final _that = this;
switch (_that) {
case _TaskSortSpec():
return $default(_that.key,_that.direction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SortKey key,  SortDirection direction)?  $default,) {final _that = this;
switch (_that) {
case _TaskSortSpec() when $default != null:
return $default(_that.key,_that.direction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaskSortSpec implements TaskSortSpec {
  const _TaskSortSpec({required this.key, required this.direction});
  factory _TaskSortSpec.fromJson(Map<String, dynamic> json) => _$TaskSortSpecFromJson(json);

@override final  SortKey key;
@override final  SortDirection direction;

/// Create a copy of TaskSortSpec
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskSortSpecCopyWith<_TaskSortSpec> get copyWith => __$TaskSortSpecCopyWithImpl<_TaskSortSpec>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskSortSpecToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskSortSpec&&(identical(other.key, key) || other.key == key)&&(identical(other.direction, direction) || other.direction == direction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,direction);

@override
String toString() {
  return 'TaskSortSpec(key: $key, direction: $direction)';
}


}

/// @nodoc
abstract mixin class _$TaskSortSpecCopyWith<$Res> implements $TaskSortSpecCopyWith<$Res> {
  factory _$TaskSortSpecCopyWith(_TaskSortSpec value, $Res Function(_TaskSortSpec) _then) = __$TaskSortSpecCopyWithImpl;
@override @useResult
$Res call({
 SortKey key, SortDirection direction
});




}
/// @nodoc
class __$TaskSortSpecCopyWithImpl<$Res>
    implements _$TaskSortSpecCopyWith<$Res> {
  __$TaskSortSpecCopyWithImpl(this._self, this._then);

  final _TaskSortSpec _self;
  final $Res Function(_TaskSortSpec) _then;

/// Create a copy of TaskSortSpec
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? direction = null,}) {
  return _then(_TaskSortSpec(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as SortKey,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as SortDirection,
  ));
}


}

// dart format on
