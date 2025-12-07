// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {

 String get query;
/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchEventCopyWith<SearchEvent> get copyWith => _$SearchEventCopyWithImpl<SearchEvent>(this as SearchEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchEventCopyWith<$Res>  {
  factory $SearchEventCopyWith(SearchEvent value, $Res Function(SearchEvent) _then) = _$SearchEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchEventCopyWithImpl<$Res>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._self, this._then);

  final SearchEvent _self;
  final $Res Function(SearchEvent) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SearchQueryChanged value)?  searchQueryChanged,TResult Function( _SearchMovies value)?  searchMovies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that);case _SearchMovies() when searchMovies != null:
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SearchQueryChanged value)  searchQueryChanged,required TResult Function( _SearchMovies value)  searchMovies,}){
final _that = this;
switch (_that) {
case _SearchQueryChanged():
return searchQueryChanged(_that);case _SearchMovies():
return searchMovies(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SearchQueryChanged value)?  searchQueryChanged,TResult? Function( _SearchMovies value)?  searchMovies,}){
final _that = this;
switch (_that) {
case _SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that);case _SearchMovies() when searchMovies != null:
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query)?  searchQueryChanged,TResult Function( String query,  int page)?  searchMovies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that.query);case _SearchMovies() when searchMovies != null:
return searchMovies(_that.query,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query)  searchQueryChanged,required TResult Function( String query,  int page)  searchMovies,}) {final _that = this;
switch (_that) {
case _SearchQueryChanged():
return searchQueryChanged(_that.query);case _SearchMovies():
return searchMovies(_that.query,_that.page);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query)?  searchQueryChanged,TResult? Function( String query,  int page)?  searchMovies,}) {final _that = this;
switch (_that) {
case _SearchQueryChanged() when searchQueryChanged != null:
return searchQueryChanged(_that.query);case _SearchMovies() when searchMovies != null:
return searchMovies(_that.query,_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _SearchQueryChanged implements SearchEvent {
  const _SearchQueryChanged(this.query);
  

@override final  String query;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryChangedCopyWith<_SearchQueryChanged> get copyWith => __$SearchQueryChangedCopyWithImpl<_SearchQueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent.searchQueryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$SearchQueryChangedCopyWith(_SearchQueryChanged value, $Res Function(_SearchQueryChanged) _then) = __$SearchQueryChangedCopyWithImpl;
@override @useResult
$Res call({
 String query
});




}
/// @nodoc
class __$SearchQueryChangedCopyWithImpl<$Res>
    implements _$SearchQueryChangedCopyWith<$Res> {
  __$SearchQueryChangedCopyWithImpl(this._self, this._then);

  final _SearchQueryChanged _self;
  final $Res Function(_SearchQueryChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(_SearchQueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SearchMovies implements SearchEvent {
  const _SearchMovies({required this.query, this.page = 1});
  

@override final  String query;
@JsonKey() final  int page;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMoviesCopyWith<_SearchMovies> get copyWith => __$SearchMoviesCopyWithImpl<_SearchMovies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMovies&&(identical(other.query, query) || other.query == query)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode => Object.hash(runtimeType,query,page);

@override
String toString() {
  return 'SearchEvent.searchMovies(query: $query, page: $page)';
}


}

/// @nodoc
abstract mixin class _$SearchMoviesCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$SearchMoviesCopyWith(_SearchMovies value, $Res Function(_SearchMovies) _then) = __$SearchMoviesCopyWithImpl;
@override @useResult
$Res call({
 String query, int page
});




}
/// @nodoc
class __$SearchMoviesCopyWithImpl<$Res>
    implements _$SearchMoviesCopyWith<$Res> {
  __$SearchMoviesCopyWithImpl(this._self, this._then);

  final _SearchMovies _self;
  final $Res Function(_SearchMovies) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? page = null,}) {
  return _then(_SearchMovies(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 String get query; List<Movie> get movies; int get currentPage; bool get hasMore; bool get isLoadingMore; SearchProgressState get progressState;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.movies, movies)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.progressState, progressState) || other.progressState == progressState));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(movies),currentPage,hasMore,isLoadingMore,progressState);

@override
String toString() {
  return 'SearchState(query: $query, movies: $movies, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, progressState: $progressState)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 String query, List<Movie> movies, int currentPage, bool hasMore, bool isLoadingMore, SearchProgressState progressState
});


$SearchProgressStateCopyWith<$Res> get progressState;

}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? movies = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? progressState = null,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,progressState: null == progressState ? _self.progressState : progressState // ignore: cast_nullable_to_non_nullable
as SearchProgressState,
  ));
}
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchProgressStateCopyWith<$Res> get progressState {
  
  return $SearchProgressStateCopyWith<$Res>(_self.progressState, (value) {
    return _then(_self.copyWith(progressState: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<Movie> movies,  int currentPage,  bool hasMore,  bool isLoadingMore,  SearchProgressState progressState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.query,_that.movies,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.progressState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<Movie> movies,  int currentPage,  bool hasMore,  bool isLoadingMore,  SearchProgressState progressState)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.query,_that.movies,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.progressState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<Movie> movies,  int currentPage,  bool hasMore,  bool isLoadingMore,  SearchProgressState progressState)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.query,_that.movies,_that.currentPage,_that.hasMore,_that.isLoadingMore,_that.progressState);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.query = '', final  List<Movie> movies = const <Movie>[], this.currentPage = 1, this.hasMore = false, this.isLoadingMore = false, this.progressState = const SearchProgressState.idle()}): _movies = movies;
  

@override@JsonKey() final  String query;
 final  List<Movie> _movies;
@override@JsonKey() List<Movie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  SearchProgressState progressState;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._movies, _movies)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.progressState, progressState) || other.progressState == progressState));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_movies),currentPage,hasMore,isLoadingMore,progressState);

@override
String toString() {
  return 'SearchState(query: $query, movies: $movies, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore, progressState: $progressState)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<Movie> movies, int currentPage, bool hasMore, bool isLoadingMore, SearchProgressState progressState
});


@override $SearchProgressStateCopyWith<$Res> get progressState;

}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? movies = null,Object? currentPage = null,Object? hasMore = null,Object? isLoadingMore = null,Object? progressState = null,}) {
  return _then(_SearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<Movie>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,progressState: null == progressState ? _self.progressState : progressState // ignore: cast_nullable_to_non_nullable
as SearchProgressState,
  ));
}

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchProgressStateCopyWith<$Res> get progressState {
  
  return $SearchProgressStateCopyWith<$Res>(_self.progressState, (value) {
    return _then(_self.copyWith(progressState: value));
  });
}
}

/// @nodoc
mixin _$SearchProgressState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchProgressState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchProgressState()';
}


}

/// @nodoc
class $SearchProgressStateCopyWith<$Res>  {
$SearchProgressStateCopyWith(SearchProgressState _, $Res Function(SearchProgressState) __);
}


/// Adds pattern-matching-related methods to [SearchProgressState].
extension SearchProgressStatePatterns on SearchProgressState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Idle value)?  idle,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Loading() when loading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Idle value)  idle,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Idle():
return idle(_that);case _Loading():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Idle value)?  idle,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle(_that);case _Loading() when loading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  loading,TResult Function()?  loaded,TResult Function( String? message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle();case _Loading() when loading != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  loading,required TResult Function()  loaded,required TResult Function( String? message)  error,}) {final _that = this;
switch (_that) {
case _Idle():
return idle();case _Loading():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  loading,TResult? Function()?  loaded,TResult? Function( String? message)?  error,}) {final _that = this;
switch (_that) {
case _Idle() when idle != null:
return idle();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Idle implements SearchProgressState {
  const _Idle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Idle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchProgressState.idle()';
}


}




/// @nodoc


class _Loading implements SearchProgressState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchProgressState.loading()';
}


}




/// @nodoc


class _Loaded implements SearchProgressState {
  const _Loaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchProgressState.loaded()';
}


}




/// @nodoc


class _Error implements SearchProgressState {
  const _Error({this.message});
  

 final  String? message;

/// Create a copy of SearchProgressState
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
  return 'SearchProgressState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SearchProgressStateCopyWith<$Res> {
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

/// Create a copy of SearchProgressState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(_Error(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
