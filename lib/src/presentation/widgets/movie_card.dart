import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/movie_response.dart';
import '../bookmarks_page/bloc/bookmarks_bloc.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
    this.onTap,
    this.showBookmarkButton = true,
  });

  final Movie movie;
  final VoidCallback? onTap;
  final bool showBookmarkButton;

  @override
  Widget build(BuildContext context) {
    final String? posterUrl =
        movie.posterPath != null
            ? 'https://image.tmdb.org/t/p/w500${movie.posterPath}'
            : null;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Poster
            if (posterUrl != null)
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
                child: Image.network(
                  posterUrl,
                  width: 100,
                  height: 150,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (
                        BuildContext context,
                        Object error,
                        StackTrace? stackTrace,
                      ) => Container(
                        width: 100,
                        height: 150,
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported),
                      ),
                ),
              )
            else
              Container(
                width: 100,
                height: 150,
                color: Colors.grey[300],
                child: const Icon(Icons.image_not_supported),
              ),
            // Movie details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            movie.title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (showBookmarkButton)
                          BlocBuilder<BookmarksBloc, BookmarksState>(
                            builder: (BuildContext context, BookmarksState state) {
                              final bool isBookmarked =
                                  state.bookmarkStatus[movie.id] ?? false;
                              return IconButton(
                                icon: Icon(
                                  isBookmarked
                                      ? Icons.bookmark
                                      : Icons.bookmark_border,
                                  color: isBookmarked ? Colors.amber : Colors.grey,
                                ),
                                onPressed: () {
                                  if (isBookmarked) {
                                    context.read<BookmarksBloc>().add(
                                          BookmarksEvent.removeBookmark(movie.id),
                                        );
                                  } else {
                                    context.read<BookmarksBloc>().add(
                                          BookmarksEvent.addBookmark(movie),
                                        );
                                  }
                                },
                                tooltip: isBookmarked
                                    ? 'Remove bookmark'
                                    : 'Add bookmark',
                              );
                            },
                          ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          movie.voteAverage.toStringAsFixed(1),
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          movie.releaseDate,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    if (movie.overview.isNotEmpty)
                      Text(
                        movie.overview,
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

