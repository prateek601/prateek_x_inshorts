// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDetails _$MovieDetailsFromJson(
  Map<String, dynamic> json,
) => _MovieDetails(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  overview: json['overview'] as String?,
  releaseDate: json['release_date'] as String?,
  posterPath: json['poster_path'] as String?,
  backdropPath: json['backdrop_path'] as String?,
  voteAverage: (json['vote_average'] as num).toDouble(),
  voteCount: (json['vote_count'] as num).toInt(),
  runtime: (json['runtime'] as num?)?.toInt(),
  genres:
      (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
  productionCompanies:
      (json['production_companies'] as List<dynamic>?)
          ?.map((e) => ProductionCompany.fromJson(e as Map<String, dynamic>))
          .toList(),
  productionCountries:
      (json['production_countries'] as List<dynamic>?)
          ?.map((e) => ProductionCountry.fromJson(e as Map<String, dynamic>))
          .toList(),
  spokenLanguages:
      (json['spoken_languages'] as List<dynamic>?)
          ?.map((e) => SpokenLanguage.fromJson(e as Map<String, dynamic>))
          .toList(),
  budget: (json['budget'] as num?)?.toInt(),
  revenue: (json['revenue'] as num?)?.toInt(),
  originalLanguage: json['original_language'] as String?,
  originalTitle: json['original_title'] as String?,
  adult: json['adult'] as bool?,
  popularity: (json['popularity'] as num?)?.toDouble(),
  status: json['status'] as String?,
  tagline: json['tagline'] as String?,
);

Map<String, dynamic> _$MovieDetailsToJson(_MovieDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'runtime': instance.runtime,
      'genres': instance.genres,
      'production_companies': instance.productionCompanies,
      'production_countries': instance.productionCountries,
      'spoken_languages': instance.spokenLanguages,
      'budget': instance.budget,
      'revenue': instance.revenue,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'adult': instance.adult,
      'popularity': instance.popularity,
      'status': instance.status,
      'tagline': instance.tagline,
    };

_Genre _$GenreFromJson(Map<String, dynamic> json) =>
    _Genre(id: (json['id'] as num).toInt(), name: json['name'] as String);

Map<String, dynamic> _$GenreToJson(_Genre instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
};

_ProductionCompany _$ProductionCompanyFromJson(Map<String, dynamic> json) =>
    _ProductionCompany(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      logoPath: json['logo_path'] as String?,
      originCountry: json['origin_country'] as String?,
    );

Map<String, dynamic> _$ProductionCompanyToJson(_ProductionCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo_path': instance.logoPath,
      'origin_country': instance.originCountry,
    };

_ProductionCountry _$ProductionCountryFromJson(Map<String, dynamic> json) =>
    _ProductionCountry(
      iso31661: json['iso_3166_1'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ProductionCountryToJson(_ProductionCountry instance) =>
    <String, dynamic>{'iso_3166_1': instance.iso31661, 'name': instance.name};

_SpokenLanguage _$SpokenLanguageFromJson(Map<String, dynamic> json) =>
    _SpokenLanguage(
      englishName: json['english_name'] as String,
      iso6391: json['iso_639_1'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SpokenLanguageToJson(_SpokenLanguage instance) =>
    <String, dynamic>{
      'english_name': instance.englishName,
      'iso_639_1': instance.iso6391,
      'name': instance.name,
    };
