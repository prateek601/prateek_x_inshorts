import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/movie_details.dart';
import '../../injection/injection.dart';
import 'bloc/details_bloc.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({required this.movieId, super.key});

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsBloc>(
      create:
          (BuildContext context) =>
              getIt<DetailsBloc>()
                ..add(DetailsEvent.fetchDetails(movieId: movieId)),
      child: Scaffold(
        body: BlocBuilder<DetailsBloc, DetailsState>(
          builder: (BuildContext context, DetailsState state) {
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
                            context.read<DetailsBloc>().add(
                              DetailsEvent.fetchDetails(movieId: movieId),
                            );
                          },
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
              loaded: () {
                final MovieDetails? movieDetails = state.movieDetails;
                if (movieDetails == null) {
                  return const Center(child: Text('No details found'));
                }
                return _MovieDetailsContent(movieDetails: movieDetails);
              },
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ),
      ),
    );
  }
}

class _MovieDetailsContent extends StatelessWidget {
  const _MovieDetailsContent({required this.movieDetails});

  final MovieDetails movieDetails;

  @override
  Widget build(BuildContext context) {
    final String? backdropUrl =
        movieDetails.backdropPath != null
            ? 'https://image.tmdb.org/t/p/w1280${movieDetails.backdropPath}'
            : null;
    final String? posterUrl =
        movieDetails.posterPath != null
            ? 'https://image.tmdb.org/t/p/w500${movieDetails.posterPath}'
            : null;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background:
                backdropUrl != null
                    ? Image.network(
                      backdropUrl,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (
                            BuildContext context,
                            Object error,
                            StackTrace? stackTrace,
                          ) => Container(
                            color: Colors.grey[300],
                            child: const Icon(Icons.image_not_supported),
                          ),
                    )
                    : Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    if (posterUrl != null)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          posterUrl,
                          width: 120,
                          height: 180,
                          fit: BoxFit.cover,
                          errorBuilder:
                              (
                                BuildContext context,
                                Object error,
                                StackTrace? stackTrace,
                              ) => Container(
                                width: 120,
                                height: 180,
                                color: Colors.grey[300],
                                child: const Icon(Icons.image_not_supported),
                              ),
                        ),
                      )
                    else
                      Container(
                        width: 120,
                        height: 180,
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported),
                      ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            movieDetails.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (movieDetails.releaseDate != null) ...<Widget>[
                            const SizedBox(height: 8),
                            Text(
                              movieDetails.releaseDate!,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                          const SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                movieDetails.voteAverage.toStringAsFixed(1),
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '(${movieDetails.voteCount} votes)',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                          if (movieDetails.runtime != null) ...<Widget>[
                            const SizedBox(height: 8),
                            Text(
                              '${movieDetails.runtime} min',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                if (movieDetails.tagline != null &&
                    movieDetails.tagline!.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 16),
                  Text(
                    movieDetails.tagline!,
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
                if (movieDetails.overview != null &&
                    movieDetails.overview!.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 16),
                  const Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movieDetails.overview!,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                ],
                if (movieDetails.genres != null &&
                    movieDetails.genres!.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 16),
                  const Text(
                    'Genres',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children:
                        movieDetails.genres!
                            .map(
                              (Genre genre) => Chip(
                                label: Text(genre.name),
                                backgroundColor: Colors.blue[100],
                              ),
                            )
                            .toList(),
                  ),
                ],
                if (movieDetails.productionCompanies != null &&
                    movieDetails.productionCompanies!.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 16),
                  const Text(
                    'Production Companies',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children:
                        movieDetails.productionCompanies!
                            .where(
                              (ProductionCompany company) =>
                                  company.name != null,
                            )
                            .map(
                              (ProductionCompany company) => Chip(
                                label: Text(company.name!),
                                backgroundColor: Colors.green[100],
                              ),
                            )
                            .toList(),
                  ),
                ],
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
