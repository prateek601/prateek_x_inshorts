import 'package:hive/hive.dart';

import '../../../data/models/movie_details.dart';

/// Hive TypeAdapter for MovieDetails (Freezed class)
class MovieDetailsAdapter extends TypeAdapter<MovieDetails> {
  @override
  final int typeId = 2;

  @override
  MovieDetails read(BinaryReader reader) {
    return MovieDetails(
      id: reader.readInt(),
      title: reader.readString(),
      overview: reader.readBool() ? reader.readString() : null,
      releaseDate: reader.readBool() ? reader.readString() : null,
      posterPath: reader.readBool() ? reader.readString() : null,
      backdropPath: reader.readBool() ? reader.readString() : null,
      voteAverage: reader.readDouble(),
      voteCount: reader.readInt(),
      runtime: reader.readBool() ? reader.readInt() : null,
      genres: reader.readBool() ? _readGenres(reader) : null,
      productionCompanies: reader.readBool()
          ? _readProductionCompanies(reader)
          : null,
      productionCountries: reader.readBool()
          ? _readProductionCountries(reader)
          : null,
      spokenLanguages: reader.readBool()
          ? _readSpokenLanguages(reader)
          : null,
      budget: reader.readBool() ? reader.readInt() : null,
      revenue: reader.readBool() ? reader.readInt() : null,
      originalLanguage: reader.readBool() ? reader.readString() : null,
      originalTitle: reader.readBool() ? reader.readString() : null,
      adult: reader.readBool() ? reader.readBool() : null,
      popularity: reader.readBool() ? reader.readDouble() : null,
      status: reader.readBool() ? reader.readString() : null,
      tagline: reader.readBool() ? reader.readString() : null,
    );
  }

  @override
  void write(BinaryWriter writer, MovieDetails obj) {
    writer.writeInt(obj.id);
    writer.writeString(obj.title);
    writer.writeBool(obj.overview != null);
    if (obj.overview != null) {
      writer.writeString(obj.overview!);
    }
    writer.writeBool(obj.releaseDate != null);
    if (obj.releaseDate != null) {
      writer.writeString(obj.releaseDate!);
    }
    writer.writeBool(obj.posterPath != null);
    if (obj.posterPath != null) {
      writer.writeString(obj.posterPath!);
    }
    writer.writeBool(obj.backdropPath != null);
    if (obj.backdropPath != null) {
      writer.writeString(obj.backdropPath!);
    }
    writer.writeDouble(obj.voteAverage);
    writer.writeInt(obj.voteCount);
    writer.writeBool(obj.runtime != null);
    if (obj.runtime != null) {
      writer.writeInt(obj.runtime!);
    }
    writer.writeBool(obj.genres != null);
    if (obj.genres != null) {
      _writeGenres(writer, obj.genres!);
    }
    writer.writeBool(obj.productionCompanies != null);
    if (obj.productionCompanies != null) {
      _writeProductionCompanies(writer, obj.productionCompanies!);
    }
    writer.writeBool(obj.productionCountries != null);
    if (obj.productionCountries != null) {
      _writeProductionCountries(writer, obj.productionCountries!);
    }
    writer.writeBool(obj.spokenLanguages != null);
    if (obj.spokenLanguages != null) {
      _writeSpokenLanguages(writer, obj.spokenLanguages!);
    }
    writer.writeBool(obj.budget != null);
    if (obj.budget != null) {
      writer.writeInt(obj.budget!);
    }
    writer.writeBool(obj.revenue != null);
    if (obj.revenue != null) {
      writer.writeInt(obj.revenue!);
    }
    writer.writeBool(obj.originalLanguage != null);
    if (obj.originalLanguage != null) {
      writer.writeString(obj.originalLanguage!);
    }
    writer.writeBool(obj.originalTitle != null);
    if (obj.originalTitle != null) {
      writer.writeString(obj.originalTitle!);
    }
    writer.writeBool(obj.adult != null);
    if (obj.adult != null) {
      writer.writeBool(obj.adult!);
    }
    writer.writeBool(obj.popularity != null);
    if (obj.popularity != null) {
      writer.writeDouble(obj.popularity!);
    }
    writer.writeBool(obj.status != null);
    if (obj.status != null) {
      writer.writeString(obj.status!);
    }
    writer.writeBool(obj.tagline != null);
    if (obj.tagline != null) {
      writer.writeString(obj.tagline!);
    }
  }

  List<Genre> _readGenres(BinaryReader reader) {
    final int count = reader.readInt();
    return List<Genre>.generate(
      count,
      (_) => Genre(
        id: reader.readInt(),
        name: reader.readString(),
      ),
    );
  }

  void _writeGenres(BinaryWriter writer, List<Genre> genres) {
    writer.writeInt(genres.length);
    for (final Genre genre in genres) {
      writer.writeInt(genre.id);
      writer.writeString(genre.name);
    }
  }

  List<ProductionCompany> _readProductionCompanies(BinaryReader reader) {
    final int count = reader.readInt();
    return List<ProductionCompany>.generate(
      count,
      (_) => ProductionCompany(
        id: reader.readInt(),
        name: reader.readBool() ? reader.readString() : null,
        logoPath: reader.readBool() ? reader.readString() : null,
        originCountry: reader.readBool() ? reader.readString() : null,
      ),
    );
  }

  void _writeProductionCompanies(
    BinaryWriter writer,
    List<ProductionCompany> companies,
  ) {
    writer.writeInt(companies.length);
    for (final ProductionCompany company in companies) {
      writer.writeInt(company.id);
      writer.writeBool(company.name != null);
      if (company.name != null) {
        writer.writeString(company.name!);
      }
      writer.writeBool(company.logoPath != null);
      if (company.logoPath != null) {
        writer.writeString(company.logoPath!);
      }
      writer.writeBool(company.originCountry != null);
      if (company.originCountry != null) {
        writer.writeString(company.originCountry!);
      }
    }
  }

  List<ProductionCountry> _readProductionCountries(BinaryReader reader) {
    final int count = reader.readInt();
    return List<ProductionCountry>.generate(
      count,
      (_) => ProductionCountry(
        iso31661: reader.readString(),
        name: reader.readBool() ? reader.readString() : null,
      ),
    );
  }

  void _writeProductionCountries(
    BinaryWriter writer,
    List<ProductionCountry> countries,
  ) {
    writer.writeInt(countries.length);
    for (final ProductionCountry country in countries) {
      writer.writeString(country.iso31661);
      writer.writeBool(country.name != null);
      if (country.name != null) {
        writer.writeString(country.name!);
      }
    }
  }

  List<SpokenLanguage> _readSpokenLanguages(BinaryReader reader) {
    final int count = reader.readInt();
    return List<SpokenLanguage>.generate(
      count,
      (_) => SpokenLanguage(
        englishName: reader.readString(),
        iso6391: reader.readString(),
        name: reader.readBool() ? reader.readString() : null,
      ),
    );
  }

  void _writeSpokenLanguages(
    BinaryWriter writer,
    List<SpokenLanguage> languages,
  ) {
    writer.writeInt(languages.length);
    for (final SpokenLanguage language in languages) {
      writer.writeString(language.englishName);
      writer.writeString(language.iso6391);
      writer.writeBool(language.name != null);
      if (language.name != null) {
        writer.writeString(language.name!);
      }
    }
  }
}

