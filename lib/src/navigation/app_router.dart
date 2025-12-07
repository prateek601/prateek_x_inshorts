import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../injection/injection.dart';
import '../presentation/bookmarks_page/bloc/bookmarks_bloc.dart';
import '../presentation/bookmarks_page/bookmarks_view.dart';
import '../presentation/details_page/bloc/details_bloc.dart';
import '../presentation/details_page/details_view.dart';
import '../presentation/home_page/bloc/home_bloc.dart';
import '../presentation/home_page/home_view.dart';
import '../presentation/main_navigation/main_navigation_view.dart';
import '../presentation/search_page/bloc/search_bloc.dart';
import '../presentation/search_page/search_view.dart';
import '../utils/deep_link/deep_link_service.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  redirect: (BuildContext context, GoRouterState state) {
    // Handle deep link URLs by extracting the path
    // Check the full URI string - this is what iOS/Android pass when opening from a deep link
    final String location = state.uri.toString();
    final String matchedLocation = state.matchedLocation;

    // Check if it's a deep link URL
    // The location might be the full URL like "prateekxinshorts://movie/123"
    String? urlToCheck;

    if (location.isNotEmpty &&
        location.contains('${DeepLinkService.scheme}://')) {
      urlToCheck = location;
    } else if (matchedLocation.isNotEmpty &&
        matchedLocation.contains('${DeepLinkService.scheme}://')) {
      urlToCheck = matchedLocation;
    } else {
      // For normal paths, return null to proceed normally
      return null;
    }

    // Parse the deep link
    final int? movieId = DeepLinkService.parseMovieIdFromDeepLink(urlToCheck);
    if (movieId != null) {
      // Return the path that go_router can handle
      return '/movie/$movieId';
    }

    // For normal paths, return null to proceed normally
    return null;
  },
  errorBuilder: (BuildContext context, GoRouterState state) {
    // Handle errors - if it's a deep link URL, try to parse it
    final String location = state.uri.toString();
    final int? movieId = DeepLinkService.parseMovieIdFromDeepLink(location);
    if (movieId != null) {
      // Redirect to the movie page
      return BlocProvider<DetailsBloc>(
        create:
            (BuildContext context) =>
                getIt<DetailsBloc>()
                  ..add(DetailsEvent.fetchDetails(movieId: movieId)),
        child: DetailsView(movieId: movieId),
      );
    }

    // Default error page
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text('Page not found: ${state.uri}'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => appRouter.go('/'),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  },
  routes: <RouteBase>[
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return BlocProvider<BookmarksBloc>(
          create: (BuildContext context) {
            final BookmarksBloc bloc = getIt<BookmarksBloc>();
            // Load bookmarks when the app starts
            bloc.add(const BookmarksEvent.loadBookmarks());
            return bloc;
          },
          child: MainNavigationView(child: child),
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider<HomeBloc>(
              create:
                  (BuildContext context) =>
                      getIt<HomeBloc>()
                        ..add(const HomeEvent.fetchNowPlayingMovies()),
              child: const HomeView(),
            );
          },
        ),
        GoRoute(
          path: '/search',
          builder: (BuildContext context, GoRouterState state) {
            return BlocProvider<SearchBloc>(
              create: (BuildContext context) => getIt<SearchBloc>(),
              child: const SearchView(),
            );
          },
        ),
        GoRoute(
          path: '/bookmarks',
          builder: (BuildContext context, GoRouterState state) {
            // Reload bookmarks when navigating to bookmarks page
            context.read<BookmarksBloc>().add(
              const BookmarksEvent.loadBookmarks(),
            );
            return const BookmarksView();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/movie/:movieId',
      builder: (BuildContext context, GoRouterState state) {
        final String movieIdParam = state.pathParameters['movieId'] ?? '';
        final int movieId = int.tryParse(movieIdParam) ?? 0;
        return BlocProvider<DetailsBloc>(
          create:
              (BuildContext context) =>
                  getIt<DetailsBloc>()
                    ..add(DetailsEvent.fetchDetails(movieId: movieId)),
          child: DetailsView(movieId: movieId),
        );
      },
    ),
  ],
);
