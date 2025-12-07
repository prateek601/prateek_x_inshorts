import 'package:hive/hive.dart';

import '../../../data/models/movie_response.dart';

/// Hive TypeAdapter for Movie (Freezed class)
/// This adapter is manually created to work with the Freezed Movie class
class MovieAdapter extends TypeAdapter<Movie> {
  @override
  final int typeId = 0;

  @override
  Movie read(BinaryReader reader) {
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

  @override
  void write(BinaryWriter writer, Movie obj) {
    writer.writeBool(obj.adult);
    writer.writeBool(obj.backdropPath != null);
    if (obj.backdropPath != null) {
      writer.writeString(obj.backdropPath!);
    }
    writer.write(obj.genreIds);
    writer.writeInt(obj.id);
    writer.writeString(obj.originalLanguage);
    writer.writeString(obj.originalTitle);
    writer.writeString(obj.overview);
    writer.writeDouble(obj.popularity);
    writer.writeBool(obj.posterPath != null);
    if (obj.posterPath != null) {
      writer.writeString(obj.posterPath!);
    }
    writer.writeString(obj.releaseDate);
    writer.writeString(obj.title);
    writer.writeBool(obj.video);
    writer.writeDouble(obj.voteAverage);
    writer.writeInt(obj.voteCount);
  }
}
