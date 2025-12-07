import 'package:hive/hive.dart';

import '../../../data/models/movie_response.dart';

/// Hive TypeAdapter for MovieResponse (Freezed class)
class MovieResponseAdapter extends TypeAdapter<MovieResponse> {
  @override
  final int typeId = 1;

  @override
  MovieResponse read(BinaryReader reader) {
    // Read dates (nullable)
    final bool hasDates = reader.readBool();
    final MovieDates? dates = hasDates
        ? MovieDates(
            maximum: reader.readString(),
            minimum: reader.readString(),
          )
        : null;

    // Read page
    final int page = reader.readInt();

    // Read movies list
    final int moviesCount = reader.readInt();
    final List<Movie> movies = <Movie>[];
    for (int i = 0; i < moviesCount; i++) {
      movies.add(_readMovie(reader));
    }

    // Read total pages and total results
    final int totalPages = reader.readInt();
    final int totalResults = reader.readInt();

    return MovieResponse(
      dates: dates,
      page: page,
      results: movies,
      totalPages: totalPages,
      totalResults: totalResults,
    );
  }

  @override
  void write(BinaryWriter writer, MovieResponse obj) {
    // Write dates (nullable)
    writer.writeBool(obj.dates != null);
    if (obj.dates != null) {
      writer.writeString(obj.dates!.maximum);
      writer.writeString(obj.dates!.minimum);
    }

    // Write page
    writer.writeInt(obj.page);

    // Write movies list
    writer.writeInt(obj.results.length);
    for (final Movie movie in obj.results) {
      _writeMovie(writer, movie);
    }

    // Write total pages and total results
    writer.writeInt(obj.totalPages);
    writer.writeInt(obj.totalResults);
  }

  Movie _readMovie(BinaryReader reader) {
    return Movie(
      adult: reader.readBool(),
      backdropPath: reader.readBool() ? reader.readString() : null,
      genreIds: List<int>.from(reader.read()),
      id: reader.readInt(),
      originalLanguage: reader.readString(),
      originalTitle: reader.readString(),
      overview: reader.readString(),
      popularity: reader.readDouble(),
      posterPath: reader.readBool() ? reader.readString() : null,
      releaseDate: reader.readString(),
      title: reader.readString(),
      video: reader.readBool(),
      voteAverage: reader.readDouble(),
      voteCount: reader.readInt(),
    );
  }

  void _writeMovie(BinaryWriter writer, Movie movie) {
    writer.writeBool(movie.adult);
    writer.writeBool(movie.backdropPath != null);
    if (movie.backdropPath != null) {
      writer.writeString(movie.backdropPath!);
    }
    writer.write(movie.genreIds);
    writer.writeInt(movie.id);
    writer.writeString(movie.originalLanguage);
    writer.writeString(movie.originalTitle);
    writer.writeString(movie.overview);
    writer.writeDouble(movie.popularity);
    writer.writeBool(movie.posterPath != null);
    if (movie.posterPath != null) {
      writer.writeString(movie.posterPath!);
    }
    writer.writeString(movie.releaseDate);
    writer.writeString(movie.title);
    writer.writeBool(movie.video);
    writer.writeDouble(movie.voteAverage);
    writer.writeInt(movie.voteCount);
  }
}

