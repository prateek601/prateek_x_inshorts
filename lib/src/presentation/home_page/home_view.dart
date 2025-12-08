import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/movie_response.dart';
import '../widgets/widgets.dart';
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
                itemCount:
                    state.movies.length +
                    (state.isLoadingMore || state.isLoadMoreError ? 1 : 0),
                itemBuilder: (BuildContext context, int index) {
                  if (index == state.movies.length) {

                    if (state.isLoadingMore) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state.isLoadMoreError) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ElevatedButton(
                            onPressed: () {
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
                            },
                            child: const Text('Load More'),
                          ),
                        ),
                      );
                    }
                  }

                  final Movie movie = state.movies[index];
                  final bool isLastItem = index == state.movies.length - 1;

                  // Load more when reaching near the end
                  if (isLastItem &&
                      state.hasMore &&
                      !state.isLoadingMore &&
                      !state.isLoadMoreError) {
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

                  return MovieCard(
                    movie: movie,
                    onTap: () {
                      context.push('/movie/${movie.id}');
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
