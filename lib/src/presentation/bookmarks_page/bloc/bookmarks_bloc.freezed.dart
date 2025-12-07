// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmarks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookmarksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarksEvent()';
}


}

/// @nodoc
class $BookmarksEventCopyWith<$Res>  {
$BookmarksEventCopyWith(BookmarksEvent _, $Res Function(BookmarksEvent) __);
}


/// Adds pattern-matching-related methods to [BookmarksEvent].
extension BookmarksEventPatterns on BookmarksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadBookmarks value)?  loadBookmarks,TResult Function( AddBookmark value)?  addBookmark,TResult Function( RemoveBookmark value)?  removeBookmark,TResult Function( CheckBookmarkStatus value)?  checkBookmarkStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadBookmarks() when loadBookmarks != null:
return loadBookmarks(_that);case AddBookmark() when addBookmark != null:
return addBookmark(_that);case RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that);case CheckBookmarkStatus() when checkBookmarkStatus != null:
return checkBookmarkStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadBookmarks value)  loadBookmarks,required TResult Function( AddBookmark value)  addBookmark,required TResult Function( RemoveBookmark value)  removeBookmark,required TResult Function( CheckBookmarkStatus value)  checkBookmarkStatus,}){
final _that = this;
switch (_that) {
case LoadBookmarks():
return loadBookmarks(_that);case AddBookmark():
return addBookmark(_that);case RemoveBookmark():
return removeBookmark(_that);case CheckBookmarkStatus():
return checkBookmarkStatus(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadBookmarks value)?  loadBookmarks,TResult? Function( AddBookmark value)?  addBookmark,TResult? Function( RemoveBookmark value)?  removeBookmark,TResult? Function( CheckBookmarkStatus value)?  checkBookmarkStatus,}){
final _that = this;
switch (_that) {
case LoadBookmarks() when loadBookmarks != null:
return loadBookmarks(_that);case AddBookmark() when addBookmark != null:
return addBookmark(_that);case RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that);case CheckBookmarkStatus() when checkBookmarkStatus != null:
return checkBookmarkStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadBookmarks,TResult Function( Movie movie)?  addBookmark,TResult Function( int movieId)?  removeBookmark,TResult Function( int movieId)?  checkBookmarkStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadBookmarks() when loadBookmarks != null:
return loadBookmarks();case AddBookmark() when addBookmark != null:
return addBookmark(_that.movie);case RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that.movieId);case CheckBookmarkStatus() when checkBookmarkStatus != null:
return checkBookmarkStatus(_that.movieId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadBookmarks,required TResult Function( Movie movie)  addBookmark,required TResult Function( int movieId)  removeBookmark,required TResult Function( int movieId)  checkBookmarkStatus,}) {final _that = this;
switch (_that) {
case LoadBookmarks():
return loadBookmarks();case AddBookmark():
return addBookmark(_that.movie);case RemoveBookmark():
return removeBookmark(_that.movieId);case CheckBookmarkStatus():
return checkBookmarkStatus(_that.movieId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadBookmarks,TResult? Function( Movie movie)?  addBookmark,TResult? Function( int movieId)?  removeBookmark,TResult? Function( int movieId)?  checkBookmarkStatus,}) {final _that = this;
switch (_that) {
case LoadBookmarks() when loadBookmarks != null:
return loadBookmarks();case AddBookmark() when addBookmark != null:
return addBookmark(_that.movie);case RemoveBookmark() when removeBookmark != null:
return removeBookmark(_that.movieId);case CheckBookmarkStatus() when checkBookmarkStatus != null:
return checkBookmarkStatus(_that.movieId);case _:
  return null;

}
}

}

/// @nodoc


class LoadBookmarks implements BookmarksEvent {
  const LoadBookmarks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadBookmarks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarksEvent.loadBookmarks()';
}


}




/// @nodoc


class AddBookmark implements BookmarksEvent {
  const AddBookmark(this.movie);
  

 final  Movie movie;

/// Create a copy of BookmarksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddBookmarkCopyWith<AddBookmark> get copyWith => _$AddBookmarkCopyWithImpl<AddBookmark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddBookmark&&(identical(other.movie, movie) || other.movie == movie));
}


@override
int get hashCode => Object.hash(runtimeType,movie);

@override
String toString() {
  return 'BookmarksEvent.addBookmark(movie: $movie)';
}


}

/// @nodoc
abstract mixin class $AddBookmarkCopyWith<$Res> implements $BookmarksEventCopyWith<$Res> {
  factory $AddBookmarkCopyWith(AddBookmark value, $Res Function(AddBookmark) _then) = _$AddBookmarkCopyWithImpl;
@useResult
$Res call({
 Movie movie
});


$MovieCopyWith<$Res> get movie;

}
/// @nodoc
class _$AddBookmarkCopyWithImpl<$Res>
    implements $AddBookmarkCopyWith<$Res> {
  _$AddBookmarkCopyWithImpl(this._self, this._then);

  final AddBookmark _self;
  final $Res Function(AddBookmark) _then;

/// Create a copy of BookmarksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movie = null,}) {
  return _then(AddBookmark(
null == movie ? _self.movie : movie // ignore: cast_nullable_to_non_nullable
as Movie,
  ));
}

/// Create a copy of BookmarksEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieCopyWith<$Res> get movie {
  
  return $MovieCopyWith<$Res>(_self.movie, (value) {
    return _then(_self.copyWith(movie: value));
  });
}
}

/// @nodoc


class RemoveBookmark implements BookmarksEvent {
  const RemoveBookmark(this.movieId);
  

 final  int movieId;

/// Create a copy of BookmarksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveBookmarkCopyWith<RemoveBookmark> get copyWith => _$RemoveBookmarkCopyWithImpl<RemoveBookmark>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveBookmark&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'BookmarksEvent.removeBookmark(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class $RemoveBookmarkCopyWith<$Res> implements $BookmarksEventCopyWith<$Res> {
  factory $RemoveBookmarkCopyWith(RemoveBookmark value, $Res Function(RemoveBookmark) _then) = _$RemoveBookmarkCopyWithImpl;
@useResult
$Res call({
 int movieId
});




}
/// @nodoc
class _$RemoveBookmarkCopyWithImpl<$Res>
    implements $RemoveBookmarkCopyWith<$Res> {
  _$RemoveBookmarkCopyWithImpl(this._self, this._then);

  final RemoveBookmark _self;
  final $Res Function(RemoveBookmark) _then;

/// Create a copy of BookmarksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(RemoveBookmark(
null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CheckBookmarkStatus implements BookmarksEvent {
  const CheckBookmarkStatus(this.movieId);
  

 final  int movieId;

/// Create a copy of BookmarksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckBookmarkStatusCopyWith<CheckBookmarkStatus> get copyWith => _$CheckBookmarkStatusCopyWithImpl<CheckBookmarkStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckBookmarkStatus&&(identical(other.movieId, movieId) || other.movieId == movieId));
}


@override
int get hashCode => Object.hash(runtimeType,movieId);

@override
String toString() {
  return 'BookmarksEvent.checkBookmarkStatus(movieId: $movieId)';
}


}

/// @nodoc
abstract mixin class $CheckBookmarkStatusCopyWith<$Res> implements $BookmarksEventCopyWith<$Res> {
  factory $CheckBookmarkStatusCopyWith(CheckBookmarkStatus value, $Res Function(CheckBookmarkStatus) _then) = _$CheckBookmarkStatusCopyWithImpl;
@useResult
$Res call({
 int movieId
});




}
/// @nodoc
class _$CheckBookmarkStatusCopyWithImpl<$Res>
    implements $CheckBookmarkStatusCopyWith<$Res> {
  _$CheckBookmarkStatusCopyWithImpl(this._self, this._then);

  final CheckBookmarkStatus _self;
  final $Res Function(CheckBookmarkStatus) _then;

/// Create a copy of BookmarksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieId = null,}) {
  return _then(CheckBookmarkStatus(
null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$BookmarksState {

 List<Movie> get movies; Map<int, bool> get bookmarkStatus; bool get isLoading; String? get errorMessage;
/// Create a copy of BookmarksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarksStateCopyWith<BookmarksState> get copyWith => _$BookmarksStateCopyWithImpl<BookmarksState>(this as BookmarksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarksState&&const DeepCollectionEquality().equals(other.movies, movies)&&const DeepCollectionEquality().equals(other.bookmarkStatus, bookmarkStatus)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(movies),const DeepCollectionEquality().hash(bookmarkStatus),isLoading,errorMessage);

@override
String toString() {
  return 'BookmarksState(movies: $movies, bookmarkStatus: $bookmarkStatus, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $BookmarksStateCopyWith<$Res>  {
  factory $BookmarksStateCopyWith(BookmarksState value, $Res Function(BookmarksState) _then) = _$BookmarksStateCopyWithImpl;
@useResult
$Res call({
 List<Movie> movies, Map<int, bool> bookmarkStatus, bool isLoading, String? errorMessage
});




}
/// @nodoc
class _$BookmarksStateCopyWithImpl<$Res>
    implements $BookmarksStateCopyWith<$Res> {
  _$BookmarksStateCopyWithImpl(this._self, this._then);

  final BookmarksState _self;
  final $Res Function(BookmarksState) _then;

/// Create a copy of BookmarksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movies = null,Object? bookmarkStatus = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,bookmarkStatus: null == bookmarkStatus ? _self.bookmarkStatus : bookmarkStatus // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookmarksState].
extension BookmarksStatePatterns on BookmarksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookmarksState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookmarksState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookmarksState value)  $default,){
final _that = this;
switch (_that) {
case _BookmarksState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookmarksState value)?  $default,){
final _that = this;
switch (_that) {
case _BookmarksState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Movie> movies,  Map<int, bool> bookmarkStatus,  bool isLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookmarksState() when $default != null:
return $default(_that.movies,_that.bookmarkStatus,_that.isLoading,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Movie> movies,  Map<int, bool> bookmarkStatus,  bool isLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _BookmarksState():
return $default(_that.movies,_that.bookmarkStatus,_that.isLoading,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Movie> movies,  Map<int, bool> bookmarkStatus,  bool isLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _BookmarksState() when $default != null:
return $default(_that.movies,_that.bookmarkStatus,_that.isLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _BookmarksState implements BookmarksState {
  const _BookmarksState({required final  List<Movie> movies, required final  Map<int, bool> bookmarkStatus, this.isLoading = false, this.errorMessage}): _movies = movies,_bookmarkStatus = bookmarkStatus;
  

 final  List<Movie> _movies;
@override List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

 final  Map<int, bool> _bookmarkStatus;
@override Map<int, bool> get bookmarkStatus {
  if (_bookmarkStatus is EqualUnmodifiableMapView) return _bookmarkStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_bookmarkStatus);
}

@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;

/// Create a copy of BookmarksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookmarksStateCopyWith<_BookmarksState> get copyWith => __$BookmarksStateCopyWithImpl<_BookmarksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookmarksState&&const DeepCollectionEquality().equals(other._movies, _movies)&&const DeepCollectionEquality().equals(other._bookmarkStatus, _bookmarkStatus)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),const DeepCollectionEquality().hash(_bookmarkStatus),isLoading,errorMessage);

@override
String toString() {
  return 'BookmarksState(movies: $movies, bookmarkStatus: $bookmarkStatus, isLoading: $isLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$BookmarksStateCopyWith<$Res> implements $BookmarksStateCopyWith<$Res> {
  factory _$BookmarksStateCopyWith(_BookmarksState value, $Res Function(_BookmarksState) _then) = __$BookmarksStateCopyWithImpl;
@override @useResult
$Res call({
 List<Movie> movies, Map<int, bool> bookmarkStatus, bool isLoading, String? errorMessage
});




}
/// @nodoc
class __$BookmarksStateCopyWithImpl<$Res>
    implements _$BookmarksStateCopyWith<$Res> {
  __$BookmarksStateCopyWithImpl(this._self, this._then);

  final _BookmarksState _self;
  final $Res Function(_BookmarksState) _then;

/// Create a copy of BookmarksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? bookmarkStatus = null,Object? isLoading = null,Object? errorMessage = freezed,}) {
  return _then(_BookmarksState(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,bookmarkStatus: null == bookmarkStatus ? _self._bookmarkStatus : bookmarkStatus // ignore: cast_nullable_to_non_nullable
as Map<int, bool>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
