// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchNowPlayingMovies value)?  fetchNowPlayingMovies,TResult Function( _FetchTrendingMovies value)?  fetchTrendingMovies,TResult Function( _SwitchMovieType value)?  switchMovieType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchNowPlayingMovies() when fetchNowPlayingMovies != null:
return fetchNowPlayingMovies(_that);case _FetchTrendingMovies() when fetchTrendingMovies != null:
return fetchTrendingMovies(_that);case _SwitchMovieType() when switchMovieType != null:
return switchMovieType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchNowPlayingMovies value)  fetchNowPlayingMovies,required TResult Function( _FetchTrendingMovies value)  fetchTrendingMovies,required TResult Function( _SwitchMovieType value)  switchMovieType,}){
final _that = this;
switch (_that) {
case _FetchNowPlayingMovies():
return fetchNowPlayingMovies(_that);case _FetchTrendingMovies():
return fetchTrendingMovies(_that);case _SwitchMovieType():
return switchMovieType(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchNowPlayingMovies value)?  fetchNowPlayingMovies,TResult? Function( _FetchTrendingMovies value)?  fetchTrendingMovies,TResult? Function( _SwitchMovieType value)?  switchMovieType,}){
final _that = this;
switch (_that) {
case _FetchNowPlayingMovies() when fetchNowPlayingMovies != null:
return fetchNowPlayingMovies(_that);case _FetchTrendingMovies() when fetchTrendingMovies != null:
return fetchTrendingMovies(_that);case _SwitchMovieType() when switchMovieType != null:
return switchMovieType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int page)?  fetchNowPlayingMovies,TResult Function( String timeWindow,  int page)?  fetchTrendingMovies,TResult Function( MovieType movieType)?  switchMovieType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchNowPlayingMovies() when fetchNowPlayingMovies != null:
return fetchNowPlayingMovies(_that.page);case _FetchTrendingMovies() when fetchTrendingMovies != null:
return fetchTrendingMovies(_that.timeWindow,_that.page);case _SwitchMovieType() when switchMovieType != null:
return switchMovieType(_that.movieType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int page)  fetchNowPlayingMovies,required TResult Function( String timeWindow,  int page)  fetchTrendingMovies,required TResult Function( MovieType movieType)  switchMovieType,}) {final _that = this;
switch (_that) {
case _FetchNowPlayingMovies():
return fetchNowPlayingMovies(_that.page);case _FetchTrendingMovies():
return fetchTrendingMovies(_that.timeWindow,_that.page);case _SwitchMovieType():
return switchMovieType(_that.movieType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int page)?  fetchNowPlayingMovies,TResult? Function( String timeWindow,  int page)?  fetchTrendingMovies,TResult? Function( MovieType movieType)?  switchMovieType,}) {final _that = this;
switch (_that) {
case _FetchNowPlayingMovies() when fetchNowPlayingMovies != null:
return fetchNowPlayingMovies(_that.page);case _FetchTrendingMovies() when fetchTrendingMovies != null:
return fetchTrendingMovies(_that.timeWindow,_that.page);case _SwitchMovieType() when switchMovieType != null:
return switchMovieType(_that.movieType);case _:
  return null;

}
}

}

/// @nodoc


class _FetchNowPlayingMovies implements HomeEvent {
  const _FetchNowPlayingMovies({this.page = 1});
  

@JsonKey() final  int page;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchNowPlayingMoviesCopyWith<_FetchNowPlayingMovies> get copyWith => __$FetchNowPlayingMoviesCopyWithImpl<_FetchNowPlayingMovies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchNowPlayingMovies&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,page);

@override
String toString() {
  return 'HomeEvent.fetchNowPlayingMovies(page: $page)';
}


}

/// @nodoc
abstract mixin class _$FetchNowPlayingMoviesCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$FetchNowPlayingMoviesCopyWith(_FetchNowPlayingMovies value, $Res Function(_FetchNowPlayingMovies) _then) = __$FetchNowPlayingMoviesCopyWithImpl;
@useResult
$Res call({
 int page
});




}
/// @nodoc
class __$FetchNowPlayingMoviesCopyWithImpl<$Res>
    implements _$FetchNowPlayingMoviesCopyWith<$Res> {
  __$FetchNowPlayingMoviesCopyWithImpl(this._self, this._then);

  final _FetchNowPlayingMovies _self;
  final $Res Function(_FetchNowPlayingMovies) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = null,}) {
  return _then(_FetchNowPlayingMovies(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _FetchTrendingMovies implements HomeEvent {
  const _FetchTrendingMovies({this.timeWindow = 'day', this.page = 1});
  

@JsonKey() final  String timeWindow;
@JsonKey() final  int page;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchTrendingMoviesCopyWith<_FetchTrendingMovies> get copyWith => __$FetchTrendingMoviesCopyWithImpl<_FetchTrendingMovies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchTrendingMovies&&(identical(other.timeWindow, timeWindow) || other.timeWindow == timeWindow)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,timeWindow,page);

@override
String toString() {
  return 'HomeEvent.fetchTrendingMovies(timeWindow: $timeWindow, page: $page)';
}


}

/// @nodoc
abstract mixin class _$FetchTrendingMoviesCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$FetchTrendingMoviesCopyWith(_FetchTrendingMovies value, $Res Function(_FetchTrendingMovies) _then) = __$FetchTrendingMoviesCopyWithImpl;
@useResult
$Res call({
 String timeWindow, int page
});




}
/// @nodoc
class __$FetchTrendingMoviesCopyWithImpl<$Res>
    implements _$FetchTrendingMoviesCopyWith<$Res> {
  __$FetchTrendingMoviesCopyWithImpl(this._self, this._then);

  final _FetchTrendingMovies _self;
  final $Res Function(_FetchTrendingMovies) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? timeWindow = null,Object? page = null,}) {
  return _then(_FetchTrendingMovies(
timeWindow: null == timeWindow ? _self.timeWindow : timeWindow // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _SwitchMovieType implements HomeEvent {
  const _SwitchMovieType(this.movieType);
  

 final  MovieType movieType;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SwitchMovieTypeCopyWith<_SwitchMovieType> get copyWith => __$SwitchMovieTypeCopyWithImpl<_SwitchMovieType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SwitchMovieType&&(identical(other.movieType, movieType) || other.movieType == movieType));
}


@override
int get hashCode => Object.hash(runtimeType,movieType);

@override
String toString() {
  return 'HomeEvent.switchMovieType(movieType: $movieType)';
}


}

/// @nodoc
abstract mixin class _$SwitchMovieTypeCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$SwitchMovieTypeCopyWith(_SwitchMovieType value, $Res Function(_SwitchMovieType) _then) = __$SwitchMovieTypeCopyWithImpl;
@useResult
$Res call({
 MovieType movieType
});


$MovieTypeCopyWith<$Res> get movieType;

}
/// @nodoc
class __$SwitchMovieTypeCopyWithImpl<$Res>
    implements _$SwitchMovieTypeCopyWith<$Res> {
  __$SwitchMovieTypeCopyWithImpl(this._self, this._then);

  final _SwitchMovieType _self;
  final $Res Function(_SwitchMovieType) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieType = null,}) {
  return _then(_SwitchMovieType(
null == movieType ? _self.movieType : movieType // ignore: cast_nullable_to_non_nullable
as MovieType,
  ));
}

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieTypeCopyWith<$Res> get movieType {
  
  return $MovieTypeCopyWith<$Res>(_self.movieType, (value) {
    return _then(_self.copyWith(movieType: value));
  });
}
}

/// @nodoc
mixin _$HomeState {

 List<Movie> get movies; int get currentPage; bool get hasMore; bool get isLoadingMore; HomeProgressState get progressState; MovieType get movieType;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.progressState, progressState) || other.progressState == progressState)&&(identical(other.movieType, movieType) || other.movieType == movieType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(movies),currentPage,hasMore,isLoadingMore,progressState,movieType);

@override
String toString() {
  return 'HomeState(movies: $movies, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, progressState: $progressState, movieType: $movieType)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<Movie> movies, int currentPage, bool hasMore, bool isLoadingMore, HomeProgressState progressState, MovieType movieType
});


$HomeProgressStateCopyWith<$Res> get progressState;$MovieTypeCopyWith<$Res> get movieType;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movies = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? progressState = null,Object? movieType = null,}) {
  return _then(_self.copyWith(
movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,progressState: null == progressState ? _self.progressState : progressState // ignore: cast_nullable_to_non_nullable
as HomeProgressState,movieType: null == movieType ? _self.movieType : movieType // ignore: cast_nullable_to_non_nullable
as MovieType,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeProgressStateCopyWith<$Res> get progressState {
  
  return $HomeProgressStateCopyWith<$Res>(_self.progressState, (value) {
    return _then(_self.copyWith(progressState: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieTypeCopyWith<$Res> get movieType {
  
  return $MovieTypeCopyWith<$Res>(_self.movieType, (value) {
    return _then(_self.copyWith(movieType: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Movie> movies,  int currentPage,  bool hasMore,  bool isLoadingMore,  HomeProgressState progressState,  MovieType movieType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.movies,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.progressState,_that.movieType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Movie> movies,  int currentPage,  bool hasMore,  bool isLoadingMore,  HomeProgressState progressState,  MovieType movieType)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.movies,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.progressState,_that.movieType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Movie> movies,  int currentPage,  bool hasMore,  bool isLoadingMore,  HomeProgressState progressState,  MovieType movieType)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.movies,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.progressState,_that.movieType);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({final  List<Movie> movies = const <Movie>[], this.currentPage = 1, this.hasMore = false, this.isLoadingMore = false, this.progressState = const HomeProgressState.loading(), this.movieType = const MovieType.nowPlaying()}): _movies = movies;
  

 final  List<Movie> _movies;
@override@JsonKey() List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  HomeProgressState progressState;
@override@JsonKey() final  MovieType movieType;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.progressState, progressState) || other.progressState == progressState)&&(identical(other.movieType, movieType) || other.movieType == movieType));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),currentPage,hasMore,isLoadingMore,progressState,movieType);

@override
String toString() {
  return 'HomeState(movies: $movies, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, progressState: $progressState, movieType: $movieType)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<Movie> movies, int currentPage, bool hasMore, bool isLoadingMore, HomeProgressState progressState, MovieType movieType
});


@override $HomeProgressStateCopyWith<$Res> get progressState;@override $MovieTypeCopyWith<$Res> get movieType;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? progressState = null,Object? movieType = null,}) {
  return _then(_HomeState(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,progressState: null == progressState ? _self.progressState : progressState // ignore: cast_nullable_to_non_nullable
as HomeProgressState,movieType: null == movieType ? _self.movieType : movieType // ignore: cast_nullable_to_non_nullable
as MovieType,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeProgressStateCopyWith<$Res> get progressState {
  
  return $HomeProgressStateCopyWith<$Res>(_self.progressState, (value) {
    return _then(_self.copyWith(progressState: value));
  });
}/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieTypeCopyWith<$Res> get movieType {
  
  return $MovieTypeCopyWith<$Res>(_self.movieType, (value) {
    return _then(_self.copyWith(movieType: value));
  });
}
}

/// @nodoc
mixin _$MovieType {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieType);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieType()';
}


}

/// @nodoc
class $MovieTypeCopyWith<$Res>  {
$MovieTypeCopyWith(MovieType _, $Res Function(MovieType) __);
}


/// Adds pattern-matching-related methods to [MovieType].
extension MovieTypePatterns on MovieType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _NowPlaying value)?  nowPlaying,TResult Function( _Trending value)?  trending,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NowPlaying() when nowPlaying != null:
return nowPlaying(_that);case _Trending() when trending != null:
return trending(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _NowPlaying value)  nowPlaying,required TResult Function( _Trending value)  trending,}){
final _that = this;
switch (_that) {
case _NowPlaying():
return nowPlaying(_that);case _Trending():
return trending(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _NowPlaying value)?  nowPlaying,TResult? Function( _Trending value)?  trending,}){
final _that = this;
switch (_that) {
case _NowPlaying() when nowPlaying != null:
return nowPlaying(_that);case _Trending() when trending != null:
return trending(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  nowPlaying,TResult Function()?  trending,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NowPlaying() when nowPlaying != null:
return nowPlaying();case _Trending() when trending != null:
return trending();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  nowPlaying,required TResult Function()  trending,}) {final _that = this;
switch (_that) {
case _NowPlaying():
return nowPlaying();case _Trending():
return trending();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  nowPlaying,TResult? Function()?  trending,}) {final _that = this;
switch (_that) {
case _NowPlaying() when nowPlaying != null:
return nowPlaying();case _Trending() when trending != null:
return trending();case _:
  return null;

}
}

}

/// @nodoc


class _NowPlaying implements MovieType {
  const _NowPlaying();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NowPlaying);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieType.nowPlaying()';
}


}




/// @nodoc


class _Trending implements MovieType {
  const _Trending();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trending);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieType.trending()';
}


}




/// @nodoc
mixin _$HomeProgressState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProgressState()';
}


}

/// @nodoc
class $HomeProgressStateCopyWith<$Res>  {
$HomeProgressStateCopyWith(HomeProgressState _, $Res Function(HomeProgressState) __);
}


/// Adds pattern-matching-related methods to [HomeProgressState].
extension HomeProgressStatePatterns on HomeProgressState {
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


class _Loading implements HomeProgressState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProgressState.loading()';
}


}




/// @nodoc


class _Loaded implements HomeProgressState {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProgressState.loaded()';
}


}




/// @nodoc


class _Error implements HomeProgressState {
  const _Error({this.message});
  

 final  String? message;

/// Create a copy of HomeProgressState
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
  return 'HomeProgressState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $HomeProgressStateCopyWith<$Res> {
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

/// Create a copy of HomeProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_Error(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
