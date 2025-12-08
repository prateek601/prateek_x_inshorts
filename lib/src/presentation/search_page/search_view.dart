import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/movie_response.dart';
import '../widgets/widgets.dart';
import 'bloc/search_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    // Initialize controller with current state
    final SearchState currentState = context.read<SearchBloc>().state;
    _searchController.text = currentState.query;
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Movies'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: <Widget>[
          // Search field
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocListener<SearchBloc, SearchState>(
              listener: (BuildContext context, SearchState state) {
                // Update controller when state changes (e.g., when clear button is pressed)
                if (_searchController.text != state.query) {
                  _searchController.text = state.query;
                }
              },
              child: TextField(
                onTapOutside: (PointerDownEvent event) {
                  FocusScope.of(context).unfocus();
                },
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search for movies...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: BlocBuilder<SearchBloc, SearchState>(
                    builder: (BuildContext context, SearchState state) {
                      if (state.query.isNotEmpty) {
                        return IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            context.read<SearchBloc>().add(
                              const SearchEvent.searchQueryChanged(''),
                            );
                          },
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
                onChanged: (String value) {
                  context.read<SearchBloc>().add(
                    SearchEvent.searchQueryChanged(value),
                  );
                },
              ),
            ),
          ),
          // Results
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (BuildContext context, SearchState state) {
                return state.progressState.maybeWhen(
                  idle:
                      () => const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.search, size: 64, color: Colors.grey),
                            SizedBox(height: 16),
                            Text(
                              'Search for movies',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Start typing to search',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                  loading:
                      () => const Center(child: CircularProgressIndicator()),
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
                                if (state.query.isNotEmpty) {
                                  context.read<SearchBloc>().add(
                                    SearchEvent.searchMovies(
                                      query: state.query,
                                    ),
                                  );
                                }
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
                          (state.isLoadingMore || state.isLoadMoreError
                              ? 1
                              : 0),
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
                                    context.read<SearchBloc>().add(
                                      SearchEvent.searchMovies(
                                        query: state.query,
                                        page: state.currentPage + 1,
                                      ),
                                    );
                                  },
                                  child: const Text('Load More'),
                                ),
                              ),
                            );
                          }
                        }

                        final Movie movie = state.movies[index];
                        final bool isLastItem =
                            index == state.movies.length - 1;

                        // Load more when reaching near the end
                        if (isLastItem &&
                            state.hasMore &&
                            !state.isLoadingMore &&
                            !state.isLoadMoreError) {
                          context.read<SearchBloc>().add(
                            SearchEvent.searchMovies(
                              query: state.query,
                              page: state.currentPage + 1,
                            ),
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
                  orElse:
                      () => const Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
