// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_signed_user_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignedUserId {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedUserId);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignedUserId()';
}


}

/// @nodoc
class $SignedUserIdCopyWith<$Res>  {
$SignedUserIdCopyWith(SignedUserId _, $Res Function(SignedUserId) __);
}


/// Adds pattern-matching-related methods to [SignedUserId].
extension SignedUserIdPatterns on SignedUserId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignedUserIdSignedIn value)?  signedIn,TResult Function( SignedUserIdLoading value)?  loading,TResult Function( SignedUserIdError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignedUserIdSignedIn() when signedIn != null:
return signedIn(_that);case SignedUserIdLoading() when loading != null:
return loading(_that);case SignedUserIdError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignedUserIdSignedIn value)  signedIn,required TResult Function( SignedUserIdLoading value)  loading,required TResult Function( SignedUserIdError value)  error,}){
final _that = this;
switch (_that) {
case SignedUserIdSignedIn():
return signedIn(_that);case SignedUserIdLoading():
return loading(_that);case SignedUserIdError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignedUserIdSignedIn value)?  signedIn,TResult? Function( SignedUserIdLoading value)?  loading,TResult? Function( SignedUserIdError value)?  error,}){
final _that = this;
switch (_that) {
case SignedUserIdSignedIn() when signedIn != null:
return signedIn(_that);case SignedUserIdLoading() when loading != null:
return loading(_that);case SignedUserIdError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserId userId)?  signedIn,TResult Function()?  loading,TResult Function( Object error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignedUserIdSignedIn() when signedIn != null:
return signedIn(_that.userId);case SignedUserIdLoading() when loading != null:
return loading();case SignedUserIdError() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserId userId)  signedIn,required TResult Function()  loading,required TResult Function( Object error)  error,}) {final _that = this;
switch (_that) {
case SignedUserIdSignedIn():
return signedIn(_that.userId);case SignedUserIdLoading():
return loading();case SignedUserIdError():
return error(_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserId userId)?  signedIn,TResult? Function()?  loading,TResult? Function( Object error)?  error,}) {final _that = this;
switch (_that) {
case SignedUserIdSignedIn() when signedIn != null:
return signedIn(_that.userId);case SignedUserIdLoading() when loading != null:
return loading();case SignedUserIdError() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class SignedUserIdSignedIn implements SignedUserId {
  const SignedUserIdSignedIn(this.userId);
  

 final  UserId userId;

/// Create a copy of SignedUserId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignedUserIdSignedInCopyWith<SignedUserIdSignedIn> get copyWith => _$SignedUserIdSignedInCopyWithImpl<SignedUserIdSignedIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedUserIdSignedIn&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'SignedUserId.signedIn(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SignedUserIdSignedInCopyWith<$Res> implements $SignedUserIdCopyWith<$Res> {
  factory $SignedUserIdSignedInCopyWith(SignedUserIdSignedIn value, $Res Function(SignedUserIdSignedIn) _then) = _$SignedUserIdSignedInCopyWithImpl;
@useResult
$Res call({
 UserId userId
});




}
/// @nodoc
class _$SignedUserIdSignedInCopyWithImpl<$Res>
    implements $SignedUserIdSignedInCopyWith<$Res> {
  _$SignedUserIdSignedInCopyWithImpl(this._self, this._then);

  final SignedUserIdSignedIn _self;
  final $Res Function(SignedUserIdSignedIn) _then;

/// Create a copy of SignedUserId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(SignedUserIdSignedIn(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as UserId,
  ));
}


}

/// @nodoc


class SignedUserIdLoading implements SignedUserId {
  const SignedUserIdLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedUserIdLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignedUserId.loading()';
}


}




/// @nodoc


class SignedUserIdError implements SignedUserId {
  const SignedUserIdError(this.error);
  

 final  Object error;

/// Create a copy of SignedUserId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignedUserIdErrorCopyWith<SignedUserIdError> get copyWith => _$SignedUserIdErrorCopyWithImpl<SignedUserIdError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignedUserIdError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'SignedUserId.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $SignedUserIdErrorCopyWith<$Res> implements $SignedUserIdCopyWith<$Res> {
  factory $SignedUserIdErrorCopyWith(SignedUserIdError value, $Res Function(SignedUserIdError) _then) = _$SignedUserIdErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$SignedUserIdErrorCopyWithImpl<$Res>
    implements $SignedUserIdErrorCopyWith<$Res> {
  _$SignedUserIdErrorCopyWithImpl(this._self, this._then);

  final SignedUserIdError _self;
  final $Res Function(SignedUserIdError) _then;

/// Create a copy of SignedUserId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(SignedUserIdError(
null == error ? _self.error : error ,
  ));
}


}

// dart format on
