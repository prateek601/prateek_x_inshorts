// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailsState {

 int get someValue; DetailsProgressState get progressState;
/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsStateCopyWith<DetailsState> get copyWith => _$DetailsStateCopyWithImpl<DetailsState>(this as DetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsState&&(identical(other.someValue, someValue) || other.someValue == someValue)&&(identical(other.progressState, progressState) || other.progressState == progressState));
}


@override
int get hashCode => Object.hash(runtimeType,someValue,progressState);

@override
String toString() {
  return 'DetailsState(someValue: $someValue, progressState: $progressState)';
}


}

/// @nodoc
abstract mixin class $DetailsStateCopyWith<$Res>  {
  factory $DetailsStateCopyWith(DetailsState value, $Res Function(DetailsState) _then) = _$DetailsStateCopyWithImpl;
@useResult
$Res call({
 int someValue, DetailsProgressState progressState
});


$DetailsProgressStateCopyWith<$Res> get progressState;

}
/// @nodoc
class _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._self, this._then);

  final DetailsState _self;
  final $Res Function(DetailsState) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? someValue = null,Object? progressState = null,}) {
  return _then(_self.copyWith(
someValue: null == someValue ? _self.someValue : someValue // ignore: cast_nullable_to_non_nullable
as int,progressState: null == progressState ? _self.progressState : progressState // ignore: cast_nullable_to_non_nullable
as DetailsProgressState,
  ));
}
/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailsProgressStateCopyWith<$Res> get progressState {
  
  return $DetailsProgressStateCopyWith<$Res>(_self.progressState, (value) {
    return _then(_self.copyWith(progressState: value));
  });
}
}


/// Adds pattern-matching-related methods to [DetailsState].
extension DetailsStatePatterns on DetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailsState value)  $default,){
final _that = this;
switch (_that) {
case _DetailsState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int someValue,  DetailsProgressState progressState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
return $default(_that.someValue,_that.progressState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int someValue,  DetailsProgressState progressState)  $default,) {final _that = this;
switch (_that) {
case _DetailsState():
return $default(_that.someValue,_that.progressState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int someValue,  DetailsProgressState progressState)?  $default,) {final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
return $default(_that.someValue,_that.progressState);case _:
  return null;

}
}

}

/// @nodoc


class _DetailsState implements DetailsState {
  const _DetailsState({this.someValue = 0, this.progressState = const DetailsProgressState.loading()});
  

@override@JsonKey() final  int someValue;
@override@JsonKey() final  DetailsProgressState progressState;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailsStateCopyWith<_DetailsState> get copyWith => __$DetailsStateCopyWithImpl<_DetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailsState&&(identical(other.someValue, someValue) || other.someValue == someValue)&&(identical(other.progressState, progressState) || other.progressState == progressState));
}


@override
int get hashCode => Object.hash(runtimeType,someValue,progressState);

@override
String toString() {
  return 'DetailsState(someValue: $someValue, progressState: $progressState)';
}


}

/// @nodoc
abstract mixin class _$DetailsStateCopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory _$DetailsStateCopyWith(_DetailsState value, $Res Function(_DetailsState) _then) = __$DetailsStateCopyWithImpl;
@override @useResult
$Res call({
 int someValue, DetailsProgressState progressState
});


@override $DetailsProgressStateCopyWith<$Res> get progressState;

}
/// @nodoc
class __$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsStateCopyWith<$Res> {
  __$DetailsStateCopyWithImpl(this._self, this._then);

  final _DetailsState _self;
  final $Res Function(_DetailsState) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? someValue = null,Object? progressState = null,}) {
  return _then(_DetailsState(
someValue: null == someValue ? _self.someValue : someValue // ignore: cast_nullable_to_non_nullable
as int,progressState: null == progressState ? _self.progressState : progressState // ignore: cast_nullable_to_non_nullable
as DetailsProgressState,
  ));
}

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DetailsProgressStateCopyWith<$Res> get progressState {
  
  return $DetailsProgressStateCopyWith<$Res>(_self.progressState, (value) {
    return _then(_self.copyWith(progressState: value));
  });
}
}

/// @nodoc
mixin _$DetailsProgressState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsProgressState()';
}


}

/// @nodoc
class $DetailsProgressStateCopyWith<$Res>  {
$DetailsProgressStateCopyWith(DetailsProgressState _, $Res Function(DetailsProgressState) __);
}


/// Adds pattern-matching-related methods to [DetailsProgressState].
extension DetailsProgressStatePatterns on DetailsProgressState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String? message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String? message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Loaded():
return loaded();case _Error():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String? message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements DetailsProgressState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsProgressState.loading()';
}


}




/// @nodoc


class _Loaded implements DetailsProgressState {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsProgressState.loaded()';
}


}




/// @nodoc


class _Error implements DetailsProgressState {
  const _Error({this.message});
  

 final  String? message;

/// Create a copy of DetailsProgressState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DetailsProgressState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $DetailsProgressStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of DetailsProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_Error(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$DetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsEvent()';
}


}

/// @nodoc
class $DetailsEventCopyWith<$Res>  {
$DetailsEventCopyWith(DetailsEvent _, $Res Function(DetailsEvent) __);
}


/// Adds pattern-matching-related methods to [DetailsEvent].
extension DetailsEventPatterns on DetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchDetails value)?  fetchDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchDetails() when fetchDetails != null:
return fetchDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchDetails value)  fetchDetails,}){
final _that = this;
switch (_that) {
case _FetchDetails():
return fetchDetails(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchDetails value)?  fetchDetails,}){
final _that = this;
switch (_that) {
case _FetchDetails() when fetchDetails != null:
return fetchDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  fetchDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchDetails() when fetchDetails != null:
return fetchDetails();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  fetchDetails,}) {final _that = this;
switch (_that) {
case _FetchDetails():
return fetchDetails();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  fetchDetails,}) {final _that = this;
switch (_that) {
case _FetchDetails() when fetchDetails != null:
return fetchDetails();case _:
  return null;

}
}

}

/// @nodoc


class _FetchDetails implements DetailsEvent {
  const _FetchDetails();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchDetails);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailsEvent.fetchDetails()';
}


}




// dart format on
