// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieDetails {

 int get id; String get title; String? get overview;@JsonKey(name: 'release_date') String? get releaseDate;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'vote_average') double get voteAverage;@JsonKey(name: 'vote_count') int get voteCount; int? get runtime; List<Genre>? get genres;@JsonKey(name: 'production_companies') List<ProductionCompany>? get productionCompanies;@JsonKey(name: 'production_countries') List<ProductionCountry>? get productionCountries;@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? get spokenLanguages; int? get budget; int? get revenue;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_title') String? get originalTitle; bool? get adult; double? get popularity; String? get status; String? get tagline;
/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailsCopyWith<MovieDetails> get copyWith => _$MovieDetailsCopyWithImpl<MovieDetails>(this as MovieDetails, _$identity);

  /// Serializes this MovieDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&const DeepCollectionEquality().equals(other.genres, genres)&&const DeepCollectionEquality().equals(other.productionCompanies, productionCompanies)&&const DeepCollectionEquality().equals(other.productionCountries, productionCountries)&&const DeepCollectionEquality().equals(other.spokenLanguages, spokenLanguages)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,overview,releaseDate,posterPath,backdropPath,voteAverage,voteCount,runtime,const DeepCollectionEquality().hash(genres),const DeepCollectionEquality().hash(productionCompanies),const DeepCollectionEquality().hash(productionCountries),const DeepCollectionEquality().hash(spokenLanguages),budget,revenue,originalLanguage,originalTitle,adult,popularity,status,tagline]);

@override
String toString() {
  return 'MovieDetails(id: $id, title: $title, overview: $overview, releaseDate: $releaseDate, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, genres: $genres, productionCompanies: $productionCompanies, productionCountries: $productionCountries, spokenLanguages: $spokenLanguages, budget: $budget, revenue: $revenue, originalLanguage: $originalLanguage, originalTitle: $originalTitle, adult: $adult, popularity: $popularity, status: $status, tagline: $tagline)';
}


}

/// @nodoc
abstract mixin class $MovieDetailsCopyWith<$Res>  {
  factory $MovieDetailsCopyWith(MovieDetails value, $Res Function(MovieDetails) _then) = _$MovieDetailsCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? overview,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount, int? runtime, List<Genre>? genres,@JsonKey(name: 'production_companies') List<ProductionCompany>? productionCompanies,@JsonKey(name: 'production_countries') List<ProductionCountry>? productionCountries,@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages, int? budget, int? revenue,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, bool? adult, double? popularity, String? status, String? tagline
});




}
/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._self, this._then);

  final MovieDetails _self;
  final $Res Function(MovieDetails) _then;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? overview = freezed,Object? releaseDate = freezed,Object? posterPath = freezed,Object? backdropPath = freezed,Object? voteAverage = null,Object? voteCount = null,Object? runtime = freezed,Object? genres = freezed,Object? productionCompanies = freezed,Object? productionCountries = freezed,Object? spokenLanguages = freezed,Object? budget = freezed,Object? revenue = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? adult = freezed,Object? popularity = freezed,Object? status = freezed,Object? tagline = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,genres: freezed == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>?,productionCompanies: freezed == productionCompanies ? _self.productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompany>?,productionCountries: freezed == productionCountries ? _self.productionCountries : productionCountries // ignore: cast_nullable_to_non_nullable
as List<ProductionCountry>?,spokenLanguages: freezed == spokenLanguages ? _self.spokenLanguages : spokenLanguages // ignore: cast_nullable_to_non_nullable
as List<SpokenLanguage>?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetails].
extension MovieDetailsPatterns on MovieDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetails value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetails value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? overview, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  int? runtime,  List<Genre>? genres, @JsonKey(name: 'production_companies')  List<ProductionCompany>? productionCompanies, @JsonKey(name: 'production_countries')  List<ProductionCountry>? productionCountries, @JsonKey(name: 'spoken_languages')  List<SpokenLanguage>? spokenLanguages,  int? budget,  int? revenue, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  bool? adult,  double? popularity,  String? status,  String? tagline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.releaseDate,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.voteCount,_that.runtime,_that.genres,_that.productionCompanies,_that.productionCountries,_that.spokenLanguages,_that.budget,_that.revenue,_that.originalLanguage,_that.originalTitle,_that.adult,_that.popularity,_that.status,_that.tagline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? overview, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  int? runtime,  List<Genre>? genres, @JsonKey(name: 'production_companies')  List<ProductionCompany>? productionCompanies, @JsonKey(name: 'production_countries')  List<ProductionCountry>? productionCountries, @JsonKey(name: 'spoken_languages')  List<SpokenLanguage>? spokenLanguages,  int? budget,  int? revenue, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  bool? adult,  double? popularity,  String? status,  String? tagline)  $default,) {final _that = this;
switch (_that) {
case _MovieDetails():
return $default(_that.id,_that.title,_that.overview,_that.releaseDate,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.voteCount,_that.runtime,_that.genres,_that.productionCompanies,_that.productionCountries,_that.spokenLanguages,_that.budget,_that.revenue,_that.originalLanguage,_that.originalTitle,_that.adult,_that.popularity,_that.status,_that.tagline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? overview, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'vote_average')  double voteAverage, @JsonKey(name: 'vote_count')  int voteCount,  int? runtime,  List<Genre>? genres, @JsonKey(name: 'production_companies')  List<ProductionCompany>? productionCompanies, @JsonKey(name: 'production_countries')  List<ProductionCountry>? productionCountries, @JsonKey(name: 'spoken_languages')  List<SpokenLanguage>? spokenLanguages,  int? budget,  int? revenue, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  bool? adult,  double? popularity,  String? status,  String? tagline)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetails() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.releaseDate,_that.posterPath,_that.backdropPath,_that.voteAverage,_that.voteCount,_that.runtime,_that.genres,_that.productionCompanies,_that.productionCountries,_that.spokenLanguages,_that.budget,_that.revenue,_that.originalLanguage,_that.originalTitle,_that.adult,_that.popularity,_that.status,_that.tagline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieDetails implements MovieDetails {
  const _MovieDetails({required this.id, required this.title, this.overview, @JsonKey(name: 'release_date') this.releaseDate, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'vote_average') required this.voteAverage, @JsonKey(name: 'vote_count') required this.voteCount, this.runtime, final  List<Genre>? genres, @JsonKey(name: 'production_companies') final  List<ProductionCompany>? productionCompanies, @JsonKey(name: 'production_countries') final  List<ProductionCountry>? productionCountries, @JsonKey(name: 'spoken_languages') final  List<SpokenLanguage>? spokenLanguages, this.budget, this.revenue, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'original_title') this.originalTitle, this.adult, this.popularity, this.status, this.tagline}): _genres = genres,_productionCompanies = productionCompanies,_productionCountries = productionCountries,_spokenLanguages = spokenLanguages;
  factory _MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);

@override final  int id;
@override final  String title;
@override final  String? overview;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'vote_average') final  double voteAverage;
@override@JsonKey(name: 'vote_count') final  int voteCount;
@override final  int? runtime;
 final  List<Genre>? _genres;
@override List<Genre>? get genres {
  final value = _genres;
  if (value == null) return null;
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductionCompany>? _productionCompanies;
@override@JsonKey(name: 'production_companies') List<ProductionCompany>? get productionCompanies {
  final value = _productionCompanies;
  if (value == null) return null;
  if (_productionCompanies is EqualUnmodifiableListView) return _productionCompanies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ProductionCountry>? _productionCountries;
@override@JsonKey(name: 'production_countries') List<ProductionCountry>? get productionCountries {
  final value = _productionCountries;
  if (value == null) return null;
  if (_productionCountries is EqualUnmodifiableListView) return _productionCountries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<SpokenLanguage>? _spokenLanguages;
@override@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? get spokenLanguages {
  final value = _spokenLanguages;
  if (value == null) return null;
  if (_spokenLanguages is EqualUnmodifiableListView) return _spokenLanguages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? budget;
@override final  int? revenue;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override final  bool? adult;
@override final  double? popularity;
@override final  String? status;
@override final  String? tagline;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailsCopyWith<_MovieDetails> get copyWith => __$MovieDetailsCopyWithImpl<_MovieDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._productionCompanies, _productionCompanies)&&const DeepCollectionEquality().equals(other._productionCountries, _productionCountries)&&const DeepCollectionEquality().equals(other._spokenLanguages, _spokenLanguages)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,overview,releaseDate,posterPath,backdropPath,voteAverage,voteCount,runtime,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_productionCompanies),const DeepCollectionEquality().hash(_productionCountries),const DeepCollectionEquality().hash(_spokenLanguages),budget,revenue,originalLanguage,originalTitle,adult,popularity,status,tagline]);

@override
String toString() {
  return 'MovieDetails(id: $id, title: $title, overview: $overview, releaseDate: $releaseDate, posterPath: $posterPath, backdropPath: $backdropPath, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, genres: $genres, productionCompanies: $productionCompanies, productionCountries: $productionCountries, spokenLanguages: $spokenLanguages, budget: $budget, revenue: $revenue, originalLanguage: $originalLanguage, originalTitle: $originalTitle, adult: $adult, popularity: $popularity, status: $status, tagline: $tagline)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailsCopyWith<$Res> implements $MovieDetailsCopyWith<$Res> {
  factory _$MovieDetailsCopyWith(_MovieDetails value, $Res Function(_MovieDetails) _then) = __$MovieDetailsCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? overview,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'vote_average') double voteAverage,@JsonKey(name: 'vote_count') int voteCount, int? runtime, List<Genre>? genres,@JsonKey(name: 'production_companies') List<ProductionCompany>? productionCompanies,@JsonKey(name: 'production_countries') List<ProductionCountry>? productionCountries,@JsonKey(name: 'spoken_languages') List<SpokenLanguage>? spokenLanguages, int? budget, int? revenue,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, bool? adult, double? popularity, String? status, String? tagline
});




}
/// @nodoc
class __$MovieDetailsCopyWithImpl<$Res>
    implements _$MovieDetailsCopyWith<$Res> {
  __$MovieDetailsCopyWithImpl(this._self, this._then);

  final _MovieDetails _self;
  final $Res Function(_MovieDetails) _then;

/// Create a copy of MovieDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? overview = freezed,Object? releaseDate = freezed,Object? posterPath = freezed,Object? backdropPath = freezed,Object? voteAverage = null,Object? voteCount = null,Object? runtime = freezed,Object? genres = freezed,Object? productionCompanies = freezed,Object? productionCountries = freezed,Object? spokenLanguages = freezed,Object? budget = freezed,Object? revenue = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? adult = freezed,Object? popularity = freezed,Object? status = freezed,Object? tagline = freezed,}) {
  return _then(_MovieDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,voteCount: null == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,genres: freezed == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genre>?,productionCompanies: freezed == productionCompanies ? _self._productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductionCompany>?,productionCountries: freezed == productionCountries ? _self._productionCountries : productionCountries // ignore: cast_nullable_to_non_nullable
as List<ProductionCountry>?,spokenLanguages: freezed == spokenLanguages ? _self._spokenLanguages : spokenLanguages // ignore: cast_nullable_to_non_nullable
as List<SpokenLanguage>?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,adult: freezed == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Genre {

 int get id; String get name;
/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenreCopyWith<Genre> get copyWith => _$GenreCopyWithImpl<Genre>(this as Genre, _$identity);

  /// Serializes this Genre to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Genre&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Genre(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $GenreCopyWith<$Res>  {
  factory $GenreCopyWith(Genre value, $Res Function(Genre) _then) = _$GenreCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$GenreCopyWithImpl<$Res>
    implements $GenreCopyWith<$Res> {
  _$GenreCopyWithImpl(this._self, this._then);

  final Genre _self;
  final $Res Function(Genre) _then;

/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Genre].
extension GenrePatterns on Genre {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Genre value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Genre() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Genre value)  $default,){
final _that = this;
switch (_that) {
case _Genre():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Genre value)?  $default,){
final _that = this;
switch (_that) {
case _Genre() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Genre() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _Genre():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _Genre() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Genre implements Genre {
  const _Genre({required this.id, required this.name});
  factory _Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenreCopyWith<_Genre> get copyWith => __$GenreCopyWithImpl<_Genre>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Genre&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'Genre(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$GenreCopyWith<$Res> implements $GenreCopyWith<$Res> {
  factory _$GenreCopyWith(_Genre value, $Res Function(_Genre) _then) = __$GenreCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$GenreCopyWithImpl<$Res>
    implements _$GenreCopyWith<$Res> {
  __$GenreCopyWithImpl(this._self, this._then);

  final _Genre _self;
  final $Res Function(_Genre) _then;

/// Create a copy of Genre
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_Genre(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductionCompany {

 int get id; String? get name;@JsonKey(name: 'logo_path') String? get logoPath;@JsonKey(name: 'origin_country') String? get originCountry;
/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionCompanyCopyWith<ProductionCompany> get copyWith => _$ProductionCompanyCopyWithImpl<ProductionCompany>(this as ProductionCompany, _$identity);

  /// Serializes this ProductionCompany to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionCompany&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoPath,originCountry);

@override
String toString() {
  return 'ProductionCompany(id: $id, name: $name, logoPath: $logoPath, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $ProductionCompanyCopyWith<$Res>  {
  factory $ProductionCompanyCopyWith(ProductionCompany value, $Res Function(ProductionCompany) _then) = _$ProductionCompanyCopyWithImpl;
@useResult
$Res call({
 int id, String? name,@JsonKey(name: 'logo_path') String? logoPath,@JsonKey(name: 'origin_country') String? originCountry
});




}
/// @nodoc
class _$ProductionCompanyCopyWithImpl<$Res>
    implements $ProductionCompanyCopyWith<$Res> {
  _$ProductionCompanyCopyWithImpl(this._self, this._then);

  final ProductionCompany _self;
  final $Res Function(ProductionCompany) _then;

/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? logoPath = freezed,Object? originCountry = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductionCompany].
extension ProductionCompanyPatterns on ProductionCompany {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductionCompany value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductionCompany() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductionCompany value)  $default,){
final _that = this;
switch (_that) {
case _ProductionCompany():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductionCompany value)?  $default,){
final _that = this;
switch (_that) {
case _ProductionCompany() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name, @JsonKey(name: 'logo_path')  String? logoPath, @JsonKey(name: 'origin_country')  String? originCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductionCompany() when $default != null:
return $default(_that.id,_that.name,_that.logoPath,_that.originCountry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name, @JsonKey(name: 'logo_path')  String? logoPath, @JsonKey(name: 'origin_country')  String? originCountry)  $default,) {final _that = this;
switch (_that) {
case _ProductionCompany():
return $default(_that.id,_that.name,_that.logoPath,_that.originCountry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name, @JsonKey(name: 'logo_path')  String? logoPath, @JsonKey(name: 'origin_country')  String? originCountry)?  $default,) {final _that = this;
switch (_that) {
case _ProductionCompany() when $default != null:
return $default(_that.id,_that.name,_that.logoPath,_that.originCountry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductionCompany implements ProductionCompany {
  const _ProductionCompany({required this.id, this.name, @JsonKey(name: 'logo_path') this.logoPath, @JsonKey(name: 'origin_country') this.originCountry});
  factory _ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);

@override final  int id;
@override final  String? name;
@override@JsonKey(name: 'logo_path') final  String? logoPath;
@override@JsonKey(name: 'origin_country') final  String? originCountry;

/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionCompanyCopyWith<_ProductionCompany> get copyWith => __$ProductionCompanyCopyWithImpl<_ProductionCompany>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductionCompanyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionCompany&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,logoPath,originCountry);

@override
String toString() {
  return 'ProductionCompany(id: $id, name: $name, logoPath: $logoPath, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$ProductionCompanyCopyWith<$Res> implements $ProductionCompanyCopyWith<$Res> {
  factory _$ProductionCompanyCopyWith(_ProductionCompany value, $Res Function(_ProductionCompany) _then) = __$ProductionCompanyCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name,@JsonKey(name: 'logo_path') String? logoPath,@JsonKey(name: 'origin_country') String? originCountry
});




}
/// @nodoc
class __$ProductionCompanyCopyWithImpl<$Res>
    implements _$ProductionCompanyCopyWith<$Res> {
  __$ProductionCompanyCopyWithImpl(this._self, this._then);

  final _ProductionCompany _self;
  final $Res Function(_ProductionCompany) _then;

/// Create a copy of ProductionCompany
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? logoPath = freezed,Object? originCountry = freezed,}) {
  return _then(_ProductionCompany(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,originCountry: freezed == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProductionCountry {

@JsonKey(name: 'iso_3166_1') String get iso31661; String? get name;
/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionCountryCopyWith<ProductionCountry> get copyWith => _$ProductionCountryCopyWithImpl<ProductionCountry>(this as ProductionCountry, _$identity);

  /// Serializes this ProductionCountry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionCountry&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso31661,name);

@override
String toString() {
  return 'ProductionCountry(iso31661: $iso31661, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProductionCountryCopyWith<$Res>  {
  factory $ProductionCountryCopyWith(ProductionCountry value, $Res Function(ProductionCountry) _then) = _$ProductionCountryCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'iso_3166_1') String iso31661, String? name
});




}
/// @nodoc
class _$ProductionCountryCopyWithImpl<$Res>
    implements $ProductionCountryCopyWith<$Res> {
  _$ProductionCountryCopyWithImpl(this._self, this._then);

  final ProductionCountry _self;
  final $Res Function(ProductionCountry) _then;

/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? iso31661 = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
iso31661: null == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductionCountry].
extension ProductionCountryPatterns on ProductionCountry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductionCountry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductionCountry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductionCountry value)  $default,){
final _that = this;
switch (_that) {
case _ProductionCountry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductionCountry value)?  $default,){
final _that = this;
switch (_that) {
case _ProductionCountry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'iso_3166_1')  String iso31661,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductionCountry() when $default != null:
return $default(_that.iso31661,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'iso_3166_1')  String iso31661,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ProductionCountry():
return $default(_that.iso31661,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'iso_3166_1')  String iso31661,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ProductionCountry() when $default != null:
return $default(_that.iso31661,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductionCountry implements ProductionCountry {
  const _ProductionCountry({@JsonKey(name: 'iso_3166_1') required this.iso31661, this.name});
  factory _ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);

@override@JsonKey(name: 'iso_3166_1') final  String iso31661;
@override final  String? name;

/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionCountryCopyWith<_ProductionCountry> get copyWith => __$ProductionCountryCopyWithImpl<_ProductionCountry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductionCountryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionCountry&&(identical(other.iso31661, iso31661) || other.iso31661 == iso31661)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,iso31661,name);

@override
String toString() {
  return 'ProductionCountry(iso31661: $iso31661, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProductionCountryCopyWith<$Res> implements $ProductionCountryCopyWith<$Res> {
  factory _$ProductionCountryCopyWith(_ProductionCountry value, $Res Function(_ProductionCountry) _then) = __$ProductionCountryCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'iso_3166_1') String iso31661, String? name
});




}
/// @nodoc
class __$ProductionCountryCopyWithImpl<$Res>
    implements _$ProductionCountryCopyWith<$Res> {
  __$ProductionCountryCopyWithImpl(this._self, this._then);

  final _ProductionCountry _self;
  final $Res Function(_ProductionCountry) _then;

/// Create a copy of ProductionCountry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? iso31661 = null,Object? name = freezed,}) {
  return _then(_ProductionCountry(
iso31661: null == iso31661 ? _self.iso31661 : iso31661 // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SpokenLanguage {

@JsonKey(name: 'english_name') String get englishName;@JsonKey(name: 'iso_639_1') String get iso6391; String? get name;
/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpokenLanguageCopyWith<SpokenLanguage> get copyWith => _$SpokenLanguageCopyWithImpl<SpokenLanguage>(this as SpokenLanguage, _$identity);

  /// Serializes this SpokenLanguage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpokenLanguage&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,englishName,iso6391,name);

@override
String toString() {
  return 'SpokenLanguage(englishName: $englishName, iso6391: $iso6391, name: $name)';
}


}

/// @nodoc
abstract mixin class $SpokenLanguageCopyWith<$Res>  {
  factory $SpokenLanguageCopyWith(SpokenLanguage value, $Res Function(SpokenLanguage) _then) = _$SpokenLanguageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'english_name') String englishName,@JsonKey(name: 'iso_639_1') String iso6391, String? name
});




}
/// @nodoc
class _$SpokenLanguageCopyWithImpl<$Res>
    implements $SpokenLanguageCopyWith<$Res> {
  _$SpokenLanguageCopyWithImpl(this._self, this._then);

  final SpokenLanguage _self;
  final $Res Function(SpokenLanguage) _then;

/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? englishName = null,Object? iso6391 = null,Object? name = freezed,}) {
  return _then(_self.copyWith(
englishName: null == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String,iso6391: null == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpokenLanguage].
extension SpokenLanguagePatterns on SpokenLanguage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpokenLanguage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpokenLanguage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpokenLanguage value)  $default,){
final _that = this;
switch (_that) {
case _SpokenLanguage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpokenLanguage value)?  $default,){
final _that = this;
switch (_that) {
case _SpokenLanguage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'english_name')  String englishName, @JsonKey(name: 'iso_639_1')  String iso6391,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpokenLanguage() when $default != null:
return $default(_that.englishName,_that.iso6391,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'english_name')  String englishName, @JsonKey(name: 'iso_639_1')  String iso6391,  String? name)  $default,) {final _that = this;
switch (_that) {
case _SpokenLanguage():
return $default(_that.englishName,_that.iso6391,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'english_name')  String englishName, @JsonKey(name: 'iso_639_1')  String iso6391,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _SpokenLanguage() when $default != null:
return $default(_that.englishName,_that.iso6391,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SpokenLanguage implements SpokenLanguage {
  const _SpokenLanguage({@JsonKey(name: 'english_name') required this.englishName, @JsonKey(name: 'iso_639_1') required this.iso6391, this.name});
  factory _SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);

@override@JsonKey(name: 'english_name') final  String englishName;
@override@JsonKey(name: 'iso_639_1') final  String iso6391;
@override final  String? name;

/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpokenLanguageCopyWith<_SpokenLanguage> get copyWith => __$SpokenLanguageCopyWithImpl<_SpokenLanguage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpokenLanguageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpokenLanguage&&(identical(other.englishName, englishName) || other.englishName == englishName)&&(identical(other.iso6391, iso6391) || other.iso6391 == iso6391)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,englishName,iso6391,name);

@override
String toString() {
  return 'SpokenLanguage(englishName: $englishName, iso6391: $iso6391, name: $name)';
}


}

/// @nodoc
abstract mixin class _$SpokenLanguageCopyWith<$Res> implements $SpokenLanguageCopyWith<$Res> {
  factory _$SpokenLanguageCopyWith(_SpokenLanguage value, $Res Function(_SpokenLanguage) _then) = __$SpokenLanguageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'english_name') String englishName,@JsonKey(name: 'iso_639_1') String iso6391, String? name
});




}
/// @nodoc
class __$SpokenLanguageCopyWithImpl<$Res>
    implements _$SpokenLanguageCopyWith<$Res> {
  __$SpokenLanguageCopyWithImpl(this._self, this._then);

  final _SpokenLanguage _self;
  final $Res Function(_SpokenLanguage) _then;

/// Create a copy of SpokenLanguage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? englishName = null,Object? iso6391 = null,Object? name = freezed,}) {
  return _then(_SpokenLanguage(
englishName: null == englishName ? _self.englishName : englishName // ignore: cast_nullable_to_non_nullable
as String,iso6391: null == iso6391 ? _self.iso6391 : iso6391 // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
