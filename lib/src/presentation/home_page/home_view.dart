import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/movie_response.dart';
import '../details_page/details_view.dart';
import 'bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: <Widget>[
          BlocBuilder<HomeBloc, HomeState>(
            builder: (BuildContext context, HomeState state) {
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: DropdownButton<MovieType>(
                  value: state.movieType,
                  underline: const SizedBox(),
                  icon: const Icon(Icons.arrow_drop_down),
                  items: const <DropdownMenuItem<MovieType>>[
                    DropdownMenuItem<MovieType>(
                      value: MovieType.nowPlaying(),
                      child: Text('Now Playing'),
                    ),
                    DropdownMenuItem<MovieType>(
                      value: MovieType.trending(),
                      child: Text('Trending'),
                    ),
                  ],
                  onChanged: (MovieType? newValue) {
                    if (newValue != null && newValue != state.movieType) {
                      context.read<HomeBloc>().add(
                        HomeEvent.switchMovieType(newValue),
                      );
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (BuildContext context, HomeState state) {
          return state.progressState.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            error:
                (String? message) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(
                        Icons.error_outline,
                        size: 48,
                        color: Colors.red,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Error: ${message ?? 'Unknown error'}',
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          state.movieType.when(
                            nowPlaying: () {
                              context.read<HomeBloc>().add(
                                const HomeEvent.fetchNowPlayingMovies(),
                              );
                            },
                            trending: () {
                              context.read<HomeBloc>().add(
                                const HomeEvent.fetchTrendingMovies(),
                              );
                            },
                          );
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
            loaded: () {
              if (state.movies.isEmpty) {
                return const Center(child: Text('No movies found'));
              }

              return ListView.builder(
                itemCount: state.movies.length + (state.isLoadingMore ? 1 : 0),
                itemBuilder: (BuildContext context, int index) {
                  if (index == state.movies.length) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  final Movie movie = state.movies[index];
                  final bool isLastItem = index == state.movies.length - 1;

                  // Load more when reaching near the end
                  if (isLastItem && state.hasMore && !state.isLoadingMore) {
                    state.movieType.when(
                      nowPlaying: () {
                        context.read<HomeBloc>().add(
                          HomeEvent.fetchNowPlayingMovies(
                            page: state.currentPage + 1,
                          ),
                        );
                      },
                      trending: () {
                        context.read<HomeBloc>().add(
                          HomeEvent.fetchTrendingMovies(
                            page: state.currentPage + 1,
                          ),
                        );
                      },
                    );
                  }

                  return _MovieCard(
                    movie: movie,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<DetailsView>(
                          builder: (BuildContext context) => DetailsView(
                            movieId: movie.id,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}

class _MovieCard extends StatelessWidget {
  const _MovieCard({required this.movie, this.onTap});

  final Movie movie;
  final VoidCallback? onTap;

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
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
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
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
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
